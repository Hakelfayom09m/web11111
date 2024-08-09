
#!/bin/bash

echo "أداة لاكتشاف ثغرات مواقع الويب"
echo "----------------------------------"

# قراءة عنوان الموقع من المستخدم
read -p "أدخل عنوان الموقع (مثال: http://example.com): " target

# إجراء فحص nmap
echo "بدء فحص nmap للمنفذ..."
nmap -p- --open $target > nmap_results.txt
echo "تم حفظ نتائج nmap في nmap_results.txt"

# إجراء فحص nikto
echo "بدء فحص nikto..."
nikto -h $target > nikto_results.txt
echo "تم حفظ نتائج nikto في nikto_results.txt"

echo "التحليل الكامل انتهى. راجع الملفات للحصول على التفاصيل."
