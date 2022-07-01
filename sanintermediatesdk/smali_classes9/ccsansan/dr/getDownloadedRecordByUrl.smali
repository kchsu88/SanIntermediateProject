.class public Lccsansan/dr/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static removeDownloadListener:I

.field public static final unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    invoke-static {}, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils()V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lccsansan/dr/getDownloadedRecordByUrl;->unifiedDownload:Ljava/util/List;

    .line 3
    const-string v1, "MIUI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v1, "Samsung"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    const-string v1, "huawei"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    const-string v1, "ColorOS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    const-string v1, "Android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v1

    int-to-byte v1, v1

    add-int/lit16 v1, v1, 0x4b08

    const-string v2, "\u0f8b\u44a7\u99b6\ueeb4\u23bf\u7883\ucd84\u029a"

    invoke-static {v2, v1}, Lccsansan/dr/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v1, "null"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    const-string v1, "DCIM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "Music"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    const-string v1, "Movies"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v1, "Pictures"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    const-string v1, ".a.dat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    const-string v1, ".uxx"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v1, ".android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v1, ".turing.dat"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v1, ".cc"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-static {}, Lccsansan/dr/getDownloadedList;->getDownloadingList()Ljava/util/HashSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget v0, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method static IncentiveDownloadUtils()V
    .locals 2

    const-wide v0, 0x1649669074800fcfL

    sput-wide v0, Lccsansan/dr/getDownloadedRecordByUrl;->addDownloadListener:J

    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;)[J
    .locals 11

    .line 72
    const-string v0, "Modify: "

    const-string v1, "Access: "

    .line 29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x2

    new-array v5, v4, [J

    .line 33
    const/16 v6, 0x4d

    :try_start_0
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 34
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v7, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    nop

    .line 36
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 72
    const/16 v3, 0x1a

    goto :goto_1

    :cond_1
    const/16 v3, 0x3e

    :goto_1
    packed-switch v3, :pswitch_data_0

    sget v3, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0xd

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_2

    goto :goto_3

    .line 66
    :pswitch_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    :goto_2
    return-object v5

    .line 36
    :cond_2
    :goto_3
    nop

    .line 37
    :try_start_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_3

    .line 72
    const/4 v3, 0x5

    goto :goto_4

    :cond_3
    const/16 v3, 0x36

    :goto_4
    const-string v7, "yyyy-MM-dd HH:mm:ss.SSS"

    const-string v8, ""

    packed-switch v3, :pswitch_data_1

    sget v3, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/2addr v3, v6

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    rem-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 37
    :cond_4
    nop

    .line 38
    :try_start_4
    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v3}, Lccsansan/dr/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v9
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v9, :cond_5

    .line 41
    :try_start_5
    new-instance v9, Ljava/text/SimpleDateFormat;

    invoke-direct {v9, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v9, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const/4 v3, 0x0

    .line 43
    aput-wide v9, v5, v3
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catch_0
    move-exception v3

    :cond_5
    :goto_5
    :pswitch_1
    nop

    .line 49
    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_0

    .line 72
    sget v3, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x6d

    rem-int/lit16 v9, v3, 0x80

    sput v9, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_6

    .line 49
    :cond_6
    nop

    .line 50
    :try_start_7
    invoke-virtual {p0, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {p0}, Lccsansan/dr/getDownloadedRecordByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-nez v3, :cond_0

    .line 53
    :try_start_8
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    const/4 p0, 0x1

    .line 55
    aput-wide v7, v5, p0
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception p0

    goto/16 :goto_0

    .line 66
    :catchall_1
    move-exception p0

    move-object v3, v2

    goto :goto_6

    :catch_2
    move-exception p0

    move-object v3, v2

    goto :goto_8

    :catchall_2
    move-exception p0

    :goto_6
    if-eqz v3, :cond_7

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    :cond_7
    :goto_7
    throw p0

    :catch_3
    move-exception p0

    :goto_8
    if-eqz v3, :cond_8

    .line 72
    const/16 v6, 0x21

    goto :goto_9

    :cond_8
    nop

    :goto_9
    packed-switch v6, :pswitch_data_2

    :goto_a
    goto :goto_b

    :pswitch_2
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    sget p0, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    rem-int/2addr p0, v4

    goto :goto_a

    :catchall_4
    move-exception p0

    goto :goto_a

    :goto_b
    sget p0, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/2addr p0, v4

    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_2
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 28
    const-string v0, "FLHelper"

    .line 10
    sget v1, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    const/16 v1, 0x55

    goto :goto_0

    :cond_0
    const/16 v1, 0x19

    :goto_0
    const-string v2, ""

    packed-switch v1, :pswitch_data_0

    .line 10
    nop

    .line 1
    invoke-static {p0}, Lccsansan/dr/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v1

    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lccsansan/dr/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    goto :goto_3

    :goto_2
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    goto :goto_1

    :goto_3
    return-object v2

    .line 4
    :cond_1
    :try_start_1
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v3, "mounted"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5
    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 6
    new-instance v3, Lccsanorg/json/JSONArray;

    invoke-direct {v3}, Lccsanorg/json/JSONArray;-><init>()V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 8
    invoke-static {p0}, Lccsansan/dr/getDownloadedList;->getDownloadStatusByUrl(Lccsanandroid/content/Context;)I

    move-result p0

    .line 9
    array-length v4, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_4
    const/4 v7, 0x1

    if-ge v6, v4, :cond_2

    .line 1
    const/4 v8, 0x1

    goto :goto_5

    :cond_2
    const/4 v8, 0x0

    :goto_5
    packed-switch v8, :pswitch_data_1

    .line 28
    sget v8, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    add-int/lit8 v8, v8, 0x1d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    goto :goto_6

    .line 20
    :pswitch_1
    nop

    .line 24
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dirs = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    .line 1
    :goto_6
    goto :goto_7

    :cond_3
    const/4 v7, 0x0

    :goto_7
    packed-switch v7, :pswitch_data_2

    .line 28
    aget-object v7, v1, v6

    goto :goto_9

    .line 9
    :pswitch_2
    aget-object v7, v1, v6

    .line 10
    sget-object v8, Lccsansan/dr/getDownloadedRecordByUrl;->unifiedDownload:Ljava/util/List;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_8
    goto :goto_a

    :goto_9
    sget-object v8, Lccsansan/dr/getDownloadedRecordByUrl;->unifiedDownload:Ljava/util/List;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v9, 0xb

    :try_start_3
    div-int/2addr v9, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_4

    goto :goto_8

    .line 28
    :goto_a
    goto :goto_b

    .line 13
    :cond_4
    :try_start_4
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 14
    new-instance v8, Lccsansan/dh/unifiedDownload;

    invoke-direct {v8}, Lccsansan/dh/unifiedDownload;-><init>()V

    .line 15
    invoke-virtual {v8, v7, p0}, Lccsansan/dh/unifiedDownload;->IncentiveDownloadUtils(Ljava/io/File;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 17
    :try_start_5
    invoke-virtual {v8}, Lccsansan/dh/unifiedDownload;->removeDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v7

    .line 18
    invoke-virtual {v3, v7}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_b

    .line 20
    :catch_0
    move-exception v7

    :try_start_6
    invoke-virtual {v7}, Lccsanorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 28
    :catchall_0
    move-exception p0

    throw p0

    .line 25
    :catch_1
    move-exception p0

    .line 28
    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_c
    return-object v2

    .line 10
    :catchall_1
    move-exception p0

    goto :goto_e

    :goto_d
    throw p0

    :goto_e
    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsansan/dr/getDownloadedRecordByUrl;->addDownloadListener:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static unifiedDownload(Ljava/lang/String;)Z
    .locals 5

    .line 2
    sget v0, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const-string v4, ".*[a-zA-Z]+.*"

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget v0, Lccsansan/dr/getDownloadedRecordByUrl;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/dr/getDownloadedRecordByUrl;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    packed-switch v1, :pswitch_data_1

    return p0

    :pswitch_1
    :try_start_1
    array-length v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
