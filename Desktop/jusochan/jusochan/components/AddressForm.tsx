"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";

export default function AddressForm() {
  const [address, setAddress] = useState("");
  const [lang, setLang] = useState("en");
  const router = useRouter();

  const handleSearch = () => {
    if (!address.trim()) return;
    router.push(`/translate/${encodeURIComponent(address)}?lang=${lang}`);
  };

  return (
    <div className="flex flex-col items-center space-y-4">
      <input
        type="text"
        value={address}
        onChange={(e) => setAddress(e.target.value)}
        className="border border-gray-300 px-4 py-2 rounded w-full max-w-md"
        placeholder="예: 서울특별시 강남구 테헤란로 152"
      />

      <select
        value={lang}
        onChange={(e) => setLang(e.target.value)}
        className="border border-gray-300 px-4 py-2 rounded w-full max-w-md"
      >
        <option value="en">영어</option>
        <option value="ja">일본어</option>
        <option value="zh">중국어</option>
      </select>

      <button
        onClick={handleSearch}
        className="bg-[#222] hover:bg-[#333] text-white font-bold px-6 py-2 rounded transition-colors duration-200"
      >
        번역하기
      </button>
    </div>
  );
}
