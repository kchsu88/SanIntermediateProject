.class public final Lccsancom/mbridge/msdk/foundation/tools/o;
.super Lccsancom/mbridge/msdk/foundation/tools/e;
.source "SameFileTool.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 199
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 200
    return-object v0

    .line 202
    :cond_0
    nop

    .line 203
    nop

    .line 205
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    nop

    .line 208
    nop

    .line 210
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    goto :goto_0

    .line 218
    :cond_1
    nop

    .line 220
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    :goto_1
    goto :goto_3

    .line 221
    :catch_0
    move-exception v1

    goto :goto_1

    .line 215
    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v2

    move-object p0, v0

    goto :goto_2

    .line 218
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 215
    :catch_3
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    .line 216
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 218
    if-eqz v1, :cond_2

    .line 220
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 225
    :cond_2
    :goto_3
    if-eqz p0, :cond_3

    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 228
    :cond_3
    return-object v0

    .line 218
    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_4

    .line 220
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 222
    goto :goto_5

    .line 221
    :catch_4
    move-exception v0

    .line 224
    :cond_4
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 735
    nop

    .line 736
    if-eqz p0, :cond_11

    if-nez p1, :cond_0

    goto/16 :goto_15

    .line 740
    :cond_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 742
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2

    .line 744
    nop

    .line 745
    const-string p0, "unzip file not exists"

    return-object p0

    .line 747
    :cond_2
    nop

    .line 748
    nop

    .line 751
    const/4 p0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 752
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, p0

    .line 754
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 755
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 756
    if-nez v3, :cond_5

    .line 757
    const-string p1, "unzip zipEntry is null"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 758
    nop

    .line 786
    if-eqz p0, :cond_3

    .line 787
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 789
    :catch_0
    move-exception p0

    .line 790
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 791
    :cond_3
    :goto_1
    nop

    .line 793
    :goto_2
    if-eqz v2, :cond_4

    .line 794
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 796
    :catch_1
    move-exception p0

    .line 797
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 798
    :cond_4
    :goto_3
    nop

    .line 758
    :goto_4
    return-object p1

    .line 760
    :cond_5
    :try_start_4
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 761
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 762
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    goto :goto_6

    .line 764
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7

    .line 765
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 767
    :cond_7
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 768
    :try_start_5
    invoke-virtual {v1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    .line 769
    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 771
    :goto_5
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 772
    invoke-virtual {v5, v3, v4, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 773
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 771
    :cond_8
    move-object v2, v5

    .line 776
    :goto_6
    goto :goto_0

    .line 785
    :catchall_0
    move-exception p1

    move-object v2, v5

    goto :goto_10

    .line 778
    :catch_2
    move-exception p1

    move-object v2, v5

    goto :goto_b

    .line 777
    :cond_9
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 786
    if-eqz p0, :cond_a

    .line 787
    :try_start_7
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_7

    .line 789
    :catch_3
    move-exception p0

    .line 790
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 791
    :cond_a
    :goto_7
    nop

    .line 793
    :goto_8
    if-eqz v2, :cond_b

    .line 794
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_9

    .line 796
    :catch_4
    move-exception p0

    .line 797
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 799
    goto :goto_a

    .line 798
    :cond_b
    :goto_9
    nop

    .line 801
    :goto_a
    const-string p0, ""

    return-object p0

    .line 778
    :catch_5
    move-exception p1

    goto :goto_b

    .line 785
    :catchall_1
    move-exception p1

    move-object v2, p0

    goto :goto_10

    .line 778
    :catch_6
    move-exception p1

    move-object v2, p0

    .line 779
    :goto_b
    :try_start_9
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 780
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 782
    :cond_c
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 783
    nop

    .line 786
    if-eqz p0, :cond_d

    .line 787
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_c

    .line 789
    :catch_7
    move-exception p0

    .line 790
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 791
    :cond_d
    :goto_c
    nop

    .line 793
    :goto_d
    if-eqz v2, :cond_e

    .line 794
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_e

    .line 796
    :catch_8
    move-exception p0

    .line 797
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 798
    :cond_e
    :goto_e
    nop

    .line 783
    :goto_f
    return-object p1

    .line 785
    :catchall_2
    move-exception p1

    .line 786
    :goto_10
    if-eqz p0, :cond_f

    .line 787
    :try_start_c
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_11

    .line 789
    :catch_9
    move-exception p0

    .line 790
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 791
    :cond_f
    :goto_11
    nop

    .line 793
    :goto_12
    if-eqz v2, :cond_10

    .line 794
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_13

    .line 796
    :catch_a
    move-exception p0

    .line 797
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 798
    :cond_10
    :goto_13
    nop

    .line 799
    :goto_14
    throw p1

    .line 737
    :cond_11
    :goto_15
    nop

    .line 738
    const-string p0, "unzip srcFile or destDir is null "

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/o$1;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/tools/o$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 286
    return-void
.end method

.method public static a(J)V
    .locals 5

    .line 521
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/b/c;->j:Lccsancom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/same/b/e;->b(Lccsancom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/o;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 525
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v2, p0

    if-gez v4, :cond_0

    .line 526
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :cond_0
    goto :goto_0

    .line 533
    :cond_1
    goto :goto_1

    .line 531
    :catchall_0
    move-exception p0

    .line 532
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SameFileTool"

    invoke-static {v0, p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 534
    :goto_1
    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .locals 4

    .line 33
    nop

    .line 1393
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1395
    :try_start_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/o;->d(Ljava/io/File;)J

    move-result-wide v0

    .line 1396
    const/high16 v2, 0x100000

    mul-int p1, p1, v2

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 1397
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/o;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1401
    :catchall_0
    move-exception p0

    .line 1402
    const-string p0, "SameFileTool"

    const-string p1, "clean memory failed"

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1399
    :catch_0
    move-exception p0

    .line 1400
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1403
    :cond_0
    :goto_0
    nop

    .line 33
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 238
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/same/c/e;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    return v1

    .line 242
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static a([BLjava/io/File;)Z
    .locals 2

    .line 648
    nop

    .line 650
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 651
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 653
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 654
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    nop

    .line 661
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 664
    :goto_0
    goto :goto_1

    .line 662
    :catch_0
    move-exception p0

    .line 663
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 667
    :goto_1
    const/4 p0, 0x1

    return p0

    .line 659
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    .line 655
    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_2

    .line 659
    :catchall_1
    move-exception p0

    goto :goto_4

    .line 655
    :catch_2
    move-exception p0

    .line 656
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 657
    const/4 p0, 0x0

    .line 659
    if-eqz v0, :cond_1

    .line 661
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 664
    goto :goto_3

    .line 662
    :catch_3
    move-exception p1

    .line 663
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 657
    :cond_1
    :goto_3
    return p0

    .line 659
    :goto_4
    if-eqz v0, :cond_2

    .line 661
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 664
    goto :goto_5

    .line 662
    :catch_4
    move-exception p1

    .line 663
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 666
    :cond_2
    :goto_5
    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 364
    const-string v0, ""

    .line 366
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 368
    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 371
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 372
    if-eqz v1, :cond_3

    array-length v2, v1

    if-nez v2, :cond_1

    goto :goto_1

    .line 376
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 377
    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/o;->b(Ljava/io/File;)Ljava/lang/String;

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 373
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    return-object v0

    .line 383
    :cond_4
    :goto_2
    goto :goto_3

    .line 381
    :catch_0
    move-exception p0

    .line 382
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_3
    return-object v0
.end method

.method public static b()V
    .locals 2

    .line 336
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/o$2;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/tools/o$2;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 355
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 356
    return-void
.end method

.method public static b(Ljava/lang/String;)[Ljava/io/File;
    .locals 2

    .line 247
    nop

    .line 249
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    .line 257
    :cond_0
    goto :goto_0

    .line 255
    :catch_0
    move-exception p0

    .line 258
    :goto_0
    return-object v0
.end method

.method private static c(Ljava/io/File;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    nop

    .line 95
    nop

    .line 97
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, p0

    move-object v2, v3

    goto :goto_0

    .line 107
    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    .line 104
    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    .line 101
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 102
    const-string p0, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    const-string v3, "\u6587\u4ef6\u4e0d\u5b58\u5728!"

    invoke-static {p0, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    :goto_0
    if-eqz v2, :cond_1

    .line 109
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 111
    :catch_1
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    goto :goto_3

    .line 113
    :cond_1
    :goto_1
    goto :goto_3

    .line 107
    :catchall_1
    move-exception p0

    goto :goto_4

    .line 104
    :catch_2
    move-exception p0

    .line 105
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    if-eqz v2, :cond_1

    .line 109
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 116
    :goto_3
    return-wide v0

    .line 108
    :goto_4
    if-eqz v2, :cond_2

    .line 109
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    .line 111
    :catch_3
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 113
    :cond_2
    :goto_5
    nop

    .line 114
    :goto_6
    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method

.method public static c(Ljava/lang/String;)V
    .locals 11

    .line 295
    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    return-void

    .line 298
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 299
    if-nez v0, :cond_1

    .line 300
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 302
    :cond_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->q()I

    move-result v0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    sub-long/2addr v1, v3

    .line 304
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_4

    .line 309
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v7, v0, v6

    .line 310
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    add-long/2addr v8, v1

    cmp-long v10, v8, v3

    if-gez v10, :cond_3

    .line 312
    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/o;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 314
    :try_start_1
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 316
    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/o;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    :cond_2
    goto :goto_1

    .line 318
    :catch_0
    move-exception v7

    .line 309
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 328
    :cond_4
    goto :goto_2

    .line 326
    :catch_1
    move-exception p0

    .line 329
    :goto_2
    return-void
.end method

.method private static d(Ljava/io/File;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    nop

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 128
    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 129
    const/4 v2, 0x0

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 130
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    aget-object v3, p0, v2

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/o;->d(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_1

    .line 133
    :cond_0
    aget-object v3, p0, v2

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/o;->c(Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 129
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-wide v0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 4

    .line 443
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/o;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p0

    .line 445
    new-instance v0, Lccsancom/mbridge/msdk/foundation/tools/o$4;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/tools/o$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 501
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 502
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 503
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 504
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_1
    goto :goto_1

    .line 509
    :catch_0
    move-exception p0

    .line 510
    const-string p0, "SameFileTool"

    const-string v0, "del memory failed"

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :goto_1
    return-void
.end method

.method private static e(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/o$3;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/tools/o$3;-><init>()V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 424
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 426
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 427
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    :cond_0
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/o;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 424
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    :cond_1
    return-object v0
.end method
