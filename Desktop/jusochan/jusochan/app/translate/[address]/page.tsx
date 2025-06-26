import { searchJuso } from "@/lib/juso";
import { translateText } from "@/lib/translate";
import AddressForm from "@/components/AddressForm";
export default async function TranslatePage({
  params,
  searchParams,
}: {
  params: { address: string };
  searchParams: { lang?: string };
}) {
  const keyword = decodeURIComponent(params.address);
  const lang = searchParams.lang || "en";

  const jusoList = await searchJuso(keyword);

  
  const translated = await Promise.all(
    jusoList.map(async (juso: any) => {
      const translatedAddr = await translateText(juso.roadAddr, lang);
      const translatedJibunAddr = await translateText(juso.jibunAddr, lang);
      return { ...juso, translatedAddr, translatedJibunAddr };
    })
  );

  return (
    
    <div className="max-w-3xl mx-auto p-6">
       <AddressForm />
      <h1 className="text-2xl font-bold mb-6">도로명주소 검색 결과</h1>
      <p className="text-gray-600 mb-6">🔍 검색어: <strong>{keyword}</strong> / 언어: <strong>{lang}</strong></p>

      <ul className="space-y-4">
        {translated.map((juso, idx) => (
          <li key={idx} className="border rounded-lg p-4 bg-white shadow space-y-3">
            <div>
              <span className="text-gray-500 font-semibold"> 원본 도로명 주소</span>
              <p className="text-gray-900 ml-2">{juso.roadAddr}</p>
            </div>

            <div>
              <span className="text-blue-600 font-semibold"> 번역 도로명 주소</span>
              <p className="text-blue-800 ml-2">{juso.translatedAddr}</p>
            </div>

            <div>
              <span className="text-gray-500 font-semibold"> 원본 지번 주소</span>
              <p className="text-gray-900 ml-2">{juso.jibunAddr}</p>
            </div>

            <div>
              <span className="text-blue-600 font-semibold"> 번역 지번 주소</span>
              <p className="text-blue-800 ml-2">{juso.translatedJibunAddr}</p>
            </div>

            <div>
              <span className="text-gray-600 font-medium"> 우편번호</span>
              <span className="ml-2">{juso.zipNo}</span>
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
}
