export default function Footer() {
  return (
    <footer className="border-t mt-6 py-3 text-center text-xs text-gray-500">
      <p>© 2025 주소챈. All rights reserved.</p>
      <p className="mt-1">
        <a href="/about" className="hover:underline">소개</a> ·{" "}
        <a href="/contact" className="hover:underline">문의</a>
      </p>
    </footer>
  );
}
