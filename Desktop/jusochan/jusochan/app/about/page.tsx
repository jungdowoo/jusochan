export default function AboutPage() {
  return (
    <div className="max-w-3xl mx-auto px-6 py-12">
      <h1 className="text-3xl font-bold mb-4">주소챈이란?</h1>
      <p className="text-lg text-gray-700 mb-6">
        <strong>주소챈</strong>은 한국의 도로명주소를 영어, 일본어, 중국어 등 다양한 언어로 번역해주는 웹 서비스입니다.  
        <br />외국인이나 해외 비즈니스 고객, 이커머스 셀러들이 주소 정보를 정확하게 이해할 수 있도록 돕기 위해 만들었습니다.
      </p>

      <div className="bg-gray-100 rounded-lg p-6 mb-6 shadow-sm">
        <h2 className="text-xl font-semibold mb-2">주요 기능</h2>
        <ul className="list-disc pl-5 text-gray-700">
          <li>도로명주소 → 영어/일본어/중국어 번역</li>
          <li>우편번호, 지번주소까지 함께 표시</li>
          <li>모바일/데스크탑 모두 최적화된 UI</li>
        </ul>
      </div>

      <div className="bg-white border-l-4 border-blue-500 p-4 shadow-sm">
        <p className="text-blue-700 font-medium">
          앞으로도 주소 번역 품질 향상과 다양한 언어 지원을 위해 계속 발전해 나가겠습니다.
        </p>
      </div>

    </div>
  );
}
