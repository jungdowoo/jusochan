export async function searchJuso(keyword: string) {
  const CONFIRM_KEY = process.env.NEXT_PUBLIC_JUSO_API_KEY!;

  const params = new URLSearchParams({
    confmKey: CONFIRM_KEY,
    currentPage: "1",
    countPerPage: "10",
    keyword,
    resultType: "json",
  });

  const res = await fetch(`https://business.juso.go.kr/addrlink/addrLinkApi.do?${params}`);
  const data = await res.json();

  return data.results?.juso ?? [];
}
