
# Installing a read/write driver for the NTF file system on Mac OS

ეს სკრიპტი დაგეხმარებათ ჩაწეროთ თქვენს External HDD ან USB Flash Drive ზე ინფორმაცია თუ ფაილური სისტემა არის ვინდოუსის NTFS ზე დაფორმატების გარეშე.


![Logo](https://www.tuxera.com/wp-content/uploads/2015/04/lev.png)


## სკრიპტის გაშვება

როგორ გავუშვათ სკრიპტი?

```bash
ჩამოტვირთეთ სკრიპტი თქვენს მაკში.
```
```bash
გახსენით ტერმინალი და მიუთითეთ სკრიპტის მდებარეობა მაგ: bash Desktop/ntfs.sh
```
```bash
სკრიპტის გაშვების შემდგომ მოგთხოვთ root პაროლს რომლის შეყვანის შემთხვევაშიც მისცემთ უფლებას გადმოიწეროს ავტომატურად საჭირო ბიბლიოთეკები.
```

```bash
ბიბლიოთეკების დაყენების შემდგომ ვუშვებთ იგივე სკრიპტს ხელახლა: bash Desktop/ntfs.sh ამის შემდგომ ტერმინალში ჩამოიშლება თქვენი დისკების ინფორმაცია , და მიუთითებთ სასურველ იდენთიფიკატორს მაგალითად: disk3s1 .
ასევე შეგიძლიათ გაუშვათ კოდი არგუმენტის მიხედვით. bash Desktop/ntfs.sh -d disk3s1 თუ მისი მოხსნა დაგჭირდებათ გაუშვით ეს ბრძანება: bash Desktop/ntfs.sh -u disk3s1
```

```bash
სკრიპტი შექმნილია იმისთვის,რომ არ მოგიწიოთ ხელით უამრავი ბრძანების გაშვება..
```
![Installation](https://s9.gifyu.com/images/2023-01-11-01-46-33.gif)

![Installation](https://i.ibb.co/31JGp1W/Screenshot-2023-01-11-at-1-51-16-AM.png)

![Installation](https://i.ibb.co/QPcqTgM/Screenshot-2023-01-11-at-1-53-30-AM.png)
## სკრიპტის ავტორი

- [@temo-arje](https://github.com/temo-arje)


## სკრიპტი მუშაობს ქვემოთ მოცემული რეპოზიტორის მიხედვით.

 - [NTFS 3G](https://github.com/osxfuse/osxfuse/wiki/NTFS-3G)

