import AddressForm from "@/components/AddressForm";

export default function HomePage() {
  return (
    <main className="max-w-2xl mx-auto py-20 px-4">
      <h1 className="text-3xl font-bold mb-6 text-center"> Jusochan - 도로명주소 다국어 번역기</h1>
      <p className="text-gray-600 text-center mb-10">
        한국 도로명주소를 입력하면 영어, 일본어, 중국어로 번역해드립니다.
      </p>
      <AddressForm />
    </main>
  );
}
