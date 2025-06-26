import Link from "next/link";

export default function Header(){
    return(
        <header className="bg-gray-100 shadow-md">
            <div className="max-w-6xl mx-auto px-4 py-3 flex justify-between items-center">
                <Link href="/" className="text-xl font-bold text-gray-800">
                    주소챈
                </Link>
                <nav className="space-x-4">
                    <Link href="/about" className="text-gray-700 hover:text-black">
                        소개
                    </Link>
                    <Link href="/contact" className="text-gray-700 hover:text-black">
                        문의
                    </Link>
                </nav>
            </div>
        </header>
    )
}