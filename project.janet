(declare-project
  :name "janet-secret"
  :description "Janet library for libsecret")

(declare-native
  :name "secret"
  :source @["janet_secret.c"]
  :cflags @["-I/usr/local/include/janet/"
            "-I/usr/include/libsecret-1"
            "-I/usr/include/glib-2.0"
            "-I/usr/lib/x86_64-linux-gnu/glib-2.0/include"
            "-pthread"
            "-I/usr/include/libmount"
            "-I/usr/include/blkid"]
 :lflags @["-L/usr/local/lib"
           "-ljanet"
           "-lsecret-1"
           "-lgio-2.0"
           "-lgobject-2.0"
           "-lglib-2.0"])

(declare-executable
  :name "write"
  :entry "write.janet")

(declare-executable
  :name "read"
  :entry "read.janet")

# (declare-executable
#   :name "savepw"
#   :entry "save.janet")
