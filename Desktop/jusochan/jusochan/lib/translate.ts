import { GoogleAuth } from "google-auth-library";

const auth = new GoogleAuth({
  keyFile: "lib/jusochan-37828566c081.json", 
  scopes: "https://www.googleapis.com/auth/cloud-platform",
});

export async function translateText(text: string, targetLang: string): Promise<string> {
  try {
    const client = await auth.getClient();

    const res: any = await client.request({
      url: "https://translation.googleapis.com/language/translate/v2",
      method: "POST",
      data: {
        q: text,
        target: targetLang,
        format: "text",
      },
    });

    const translated = res.data?.data?.translations?.[0]?.translatedText;
    return translated || "번역 실패";
  } catch (error) {
    console.error("번역 실패:", error);
    return "번역 실패";
  }
}
