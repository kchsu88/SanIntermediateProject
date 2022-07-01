.class public final Lccsancom/mbridge/msdk/foundation/tools/u;
.super Lccsancom/mbridge/msdk/foundation/tools/g;
.source "SameTool.java"


# static fields
.field private static a:[C

.field private static b:[C

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:Ljava/lang/String;

.field private static n:Ljava/util/regex/Pattern;

.field private static o:I

.field private static p:Z

.field private static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile s:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 113
    const/16 v0, 0xf

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->a:[C

    .line 114
    const/4 v0, 0x2

    new-array v1, v0, [C

    fill-array-data v1, :array_1

    sput-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->b:[C

    .line 115
    const/4 v1, 0x0

    sput v1, Lccsancom/mbridge/msdk/foundation/tools/u;->c:I

    const/4 v2, 0x1

    sput v2, Lccsancom/mbridge/msdk/foundation/tools/u;->d:I

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/u;->e:I

    const/4 v0, 0x3

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/u;->f:I

    .line 116
    sput v1, Lccsancom/mbridge/msdk/foundation/tools/u;->g:I

    const/4 v0, 0x7

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/u;->h:I

    const/16 v0, 0xe

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/u;->i:I

    const/16 v0, 0x13

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/u;->j:I

    const/16 v0, 0x10

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/u;->k:I

    const/16 v0, 0x1a

    sput v0, Lccsancom/mbridge/msdk/foundation/tools/u;->l:I

    .line 593
    const-string v0, "[\u4e00-\u9fa5]"

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->m:Ljava/lang/String;

    .line 594
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->n:Ljava/util/regex/Pattern;

    .line 610
    sput v2, Lccsancom/mbridge/msdk/foundation/tools/u;->o:I

    .line 736
    sput-boolean v2, Lccsancom/mbridge/msdk/foundation/tools/u;->p:Z

    .line 1503
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->s:Ljava/lang/Boolean;

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x70s
        0x70s
        0x6cs
        0x69s
        0x63s
        0x61s
        0x74s
        0x69s
        0x6fs
        0x6es
        0x49s
        0x6es
        0x66s
        0x6fs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x2es
        0x58s
    .end array-data
.end method

.method public static a(Ljava/lang/Double;)D
    .locals 3

    .line 919
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    .line 920
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.00"

    invoke-direct {v1, v2, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 921
    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 922
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 927
    :cond_0
    goto :goto_0

    .line 925
    :catch_0
    move-exception p0

    .line 926
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 928
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a()I
    .locals 2

    .line 613
    sget v0, Lccsancom/mbridge/msdk/foundation/tools/u;->o:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lccsancom/mbridge/msdk/foundation/tools/u;->o:I

    return v0
.end method

.method public static a(Lccsanandroid/content/Context;F)I
    .locals 2

    .line 220
    nop

    .line 222
    const/high16 v0, 0x40200000    # 2.5f

    if-eqz p0, :cond_1

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 225
    goto :goto_0

    .line 224
    :cond_0
    move v0, p0

    goto :goto_0

    .line 228
    :catch_0
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 230
    :cond_1
    :goto_0
    nop

    .line 232
    :goto_1
    div-float/2addr p1, v0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static a(Ljava/lang/Object;)I
    .locals 3

    .line 906
    nop

    .line 908
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 909
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    goto :goto_0

    .line 911
    :catchall_0
    move-exception p0

    .line 912
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameTools"

    invoke-static {v2, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 913
    :cond_0
    :goto_0
    nop

    .line 914
    :goto_1
    return v0
.end method

.method public static a(Ljava/io/File;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 334
    nop

    .line 335
    nop

    .line 337
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v0, p0

    move-object v2, v3

    goto :goto_0

    .line 346
    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_2

    .line 343
    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_5

    .line 341
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    :goto_0
    if-eqz v2, :cond_1

    .line 348
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 350
    :catch_1
    move-exception p0

    .line 353
    goto :goto_6

    .line 352
    :cond_1
    :goto_1
    goto :goto_6

    .line 346
    :catchall_1
    move-exception p0

    .line 347
    :goto_2
    if-eqz v2, :cond_2

    .line 348
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 350
    :catch_2
    move-exception v0

    goto :goto_4

    .line 352
    :cond_2
    :goto_3
    nop

    .line 353
    :goto_4
    throw p0

    .line 343
    :catch_3
    move-exception p0

    .line 347
    :goto_5
    if-eqz v2, :cond_1

    .line 348
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 354
    :goto_6
    return-wide v0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 6

    .line 800
    const-string v0, ""

    .line 804
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 805
    if-nez v1, :cond_0

    .line 806
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 808
    :cond_0
    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2}, Lccsanorg/json/JSONArray;-><init>()V

    .line 810
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->w()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 812
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object v1

    .line 813
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/db/j;->a()[J

    move-result-object v1

    .line 815
    if-eqz v1, :cond_3

    .line 816
    array-length v3, v1

    .line 817
    if-le v3, p0, :cond_2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sub-int p0, v3, p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 818
    :goto_1
    nop

    :goto_2
    if-ge p0, v3, :cond_3

    .line 819
    aget-wide v4, v1, p0

    invoke-virtual {v2, v4, v5}, Lccsanorg/json/JSONArray;->put(J)Lccsanorg/json/JSONArray;

    .line 818
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .line 823
    :cond_3
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 824
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_4
    goto :goto_3

    .line 826
    :catch_0
    move-exception p0

    .line 827
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 829
    :goto_3
    return-object v0
.end method

.method public static declared-synchronized a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/tools/u;

    monitor-enter v0

    .line 1384
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    :try_start_1
    invoke-static {p2, p0, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    goto :goto_0

    .line 1387
    :catch_0
    move-exception p0

    .line 1391
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1383
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/tools/u;

    monitor-enter v0

    .line 1359
    :try_start_0
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 1360
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p0

    .line 1361
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 1362
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "&rtins_type="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1364
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "?rtins_type="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    :goto_0
    goto :goto_1

    .line 1358
    :catchall_0
    move-exception p0

    goto :goto_5

    .line 1366
    :catch_0
    move-exception p0

    .line 1367
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "&rtins_type="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1371
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;Lccsanandroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 1372
    :goto_2
    if-eqz p1, :cond_2

    .line 1373
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1375
    :cond_2
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1379
    :goto_3
    goto :goto_4

    .line 1377
    :catch_1
    move-exception p1

    .line 1378
    :try_start_3
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    :goto_4
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1358
    :goto_5
    monitor-exit v0

    throw p0
.end method

.method public static a(Lccsanorg/json/JSONArray;)Ljava/lang/String;
    .locals 4

    .line 833
    nop

    .line 834
    if-nez p0, :cond_0

    .line 835
    const-string p0, ""

    return-object p0

    .line 837
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 839
    if-nez v0, :cond_1

    .line 840
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 842
    :cond_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->o()I

    move-result v0

    .line 844
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-le v1, v0, :cond_3

    .line 845
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 846
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 848
    :try_start_0
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    goto :goto_1

    .line 849
    :catch_0
    move-exception v3

    .line 850
    invoke-virtual {v3}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 846
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 853
    :cond_2
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    .line 854
    goto :goto_2

    .line 855
    :cond_3
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    .line 858
    :goto_2
    return-object p0
.end method

.method private static a([Ljava/lang/StackTraceElement;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/StackTraceElement;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1495
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 1496
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 1497
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1496
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1500
    :cond_0
    return-object v0
.end method

.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanorg/json/JSONArray;
    .locals 7

    .line 1233
    const-string p1, "SameTools"

    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 1237
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 1238
    if-nez v1, :cond_0

    .line 1239
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 1243
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->w()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fqci cfc:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->w()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    nop

    .line 1246
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object p0

    .line 1247
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->a()[J

    move-result-object p0

    .line 1249
    if-eqz p0, :cond_1

    .line 1250
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v3, p0, v2

    .line 1251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cfc campaignIds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v0, v3, v4}, Lccsanorg/json/JSONArray;->put(J)Lccsanorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1259
    :cond_1
    goto :goto_1

    .line 1257
    :catch_0
    move-exception p0

    .line 1258
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1260
    :goto_1
    return-object v0
.end method

.method public static a(Lccsanandroid/view/View;)V
    .locals 2

    .line 1012
    if-nez p0, :cond_0

    .line 1013
    return-void

    .line 1015
    :cond_0
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1016
    const/16 v0, 0x1006

    .line 1018
    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    :cond_1
    goto :goto_0

    .line 1020
    :catchall_0
    move-exception p0

    .line 1021
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1023
    :goto_0
    return-void
.end method

.method public static a(Lccsanandroid/widget/ImageView;)V
    .locals 1

    .line 1090
    if-nez p0, :cond_0

    .line 1091
    return-void

    .line 1094
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 1095
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1096
    invoke-virtual {p0, v0}, Lccsanandroid/widget/ImageView;->setImageURI(Lccsanandroid/net/Uri;)V

    .line 1097
    invoke-virtual {p0, v0}, Lccsanandroid/widget/ImageView;->setImageBitmap(Lccsanandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    goto :goto_0

    .line 1098
    :catchall_0
    move-exception p0

    .line 1099
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1100
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1103
    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V
    .locals 4

    .line 1283
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1284
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 1286
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/i;

    move-result-object v0

    .line 1288
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/e;-><init>()V

    .line 1289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(J)V

    .line 1290
    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/foundation/entity/e;->b(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v1, p2}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(I)V

    .line 1293
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/entity/e;)V

    .line 1297
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-class v0, Lccsancom/mbridge/msdk/foundation/tools/u;

    monitor-enter v0

    .line 1478
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->r:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1479
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->r:Ljava/util/Map;

    .line 1481
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1482
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->r:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1483
    monitor-exit v0

    return-void

    .line 1477
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 0

    .line 179
    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 182
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/String;",
            ">(TT;)Z"
        }
    .end annotation

    .line 90
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Ljava/lang/String;Lccsanandroid/content/Context;)Z
    .locals 2

    .line 862
    nop

    .line 865
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    .line 866
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lccsanandroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    if-nez p0, :cond_0

    .line 868
    const/4 v0, 0x1

    .line 872
    :cond_0
    nop

    .line 873
    return v0

    .line 870
    :catch_0
    move-exception p0

    .line 871
    return v0
.end method

.method public static b(Ljava/lang/String;)D
    .locals 3

    .line 894
    nop

    .line 896
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 897
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :cond_0
    goto :goto_0

    .line 899
    :catch_0
    move-exception p0

    .line 900
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 902
    :goto_0
    return-wide v0
.end method

.method public static b(Lccsanandroid/content/Context;F)I
    .locals 1

    .line 236
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 237
    return v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    .line 241
    if-nez p0, :cond_1

    .line 242
    return v0

    .line 244
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->density:F

    .line 245
    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private static b(Ljava/lang/String;Lccsanandroid/content/Context;)Ljava/lang/Object;
    .locals 8

    .line 1313
    nop

    .line 1315
    const/4 v0, 0x0

    :try_start_0
    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->c:I

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(I)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1316
    sget v2, Lccsancom/mbridge/msdk/foundation/tools/u;->e:I

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1317
    sget v2, Lccsancom/mbridge/msdk/foundation/tools/u;->d:I

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(I)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1318
    sget v4, Lccsancom/mbridge/msdk/foundation/tools/u;->f:I

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(I)[C

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1319
    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    const/16 p0, 0x2000

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v7

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1322
    :catchall_0
    move-exception p0

    .line 1323
    goto :goto_1

    .line 1320
    :catch_0
    move-exception p0

    .line 1321
    nop

    .line 1324
    :goto_0
    nop

    .line 1325
    :goto_1
    return-object v0
.end method

.method public static b(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1267
    const-string v0, ""

    .line 1269
    :try_start_0
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    .line 1271
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    .line 1272
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    :cond_0
    const-string p0, "SameTools"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get excludes:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    goto :goto_0

    .line 1275
    :catch_0
    move-exception p0

    .line 1276
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1278
    :goto_0
    return-object v0
.end method

.method public static b(Lccsanorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1107
    nop

    .line 1108
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1110
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1111
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    .line 1112
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1113
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 1118
    :catchall_0
    move-exception p0

    .line 1119
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameTools"

    invoke-static {v2, v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1121
    return-object v0

    .line 1117
    :cond_2
    :goto_1
    return-object v0
.end method

.method public static b()Z
    .locals 2

    .line 1136
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static b(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 120
    :try_start_0
    const-string v0, "connectivity"

    .line 121
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/net/ConnectivityManager;

    .line 122
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object p0

    .line 123
    if-eqz p0, :cond_0

    .line 124
    const-string v0, "wifi"

    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    .line 125
    const/4 p0, 0x1

    return p0

    .line 130
    :cond_0
    goto :goto_0

    .line 128
    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 2

    .line 878
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 879
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRetarget_offer()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 880
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 881
    return v1

    .line 883
    :cond_0
    return v0

    .line 886
    :catch_0
    move-exception p0

    .line 887
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 888
    :cond_1
    nop

    .line 889
    :goto_0
    return v0
.end method

.method private static final b(I)[C
    .locals 3

    .line 1329
    nop

    .line 1330
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 1346
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1347
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->k:I

    sget v2, Lccsancom/mbridge/msdk/foundation/tools/u;->j:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/s;->c:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    goto/16 :goto_0

    .line 1342
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1343
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->k:I

    sget v2, Lccsancom/mbridge/msdk/foundation/tools/u;->j:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->a:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    goto/16 :goto_0

    .line 1338
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1339
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->h:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->g:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->h:I

    sget v2, Lccsancom/mbridge/msdk/foundation/tools/u;->i:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->g:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->j:I

    sget v2, Lccsancom/mbridge/msdk/foundation/tools/u;->l:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    goto :goto_0

    .line 1332
    :pswitch_3
    nop

    .line 1333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->h:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->g:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->h:I

    sget v2, Lccsancom/mbridge/msdk/foundation/tools/u;->i:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->g:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/t;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->i:I

    sget v2, Lccsancom/mbridge/msdk/foundation/tools/u;->k:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->b:[C

    sget v1, Lccsancom/mbridge/msdk/foundation/tools/u;->g:I

    aget-char v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/s;->c:[C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    nop

    .line 1352
    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c()I
    .locals 2

    .line 1506
    nop

    .line 1507
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->s:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2054
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v0

    .line 1509
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->e()Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->s:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    goto :goto_0

    .line 1510
    :catch_0
    move-exception v0

    .line 1511
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SameTools"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    :cond_0
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->s:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 1516
    sget-object v0, Lccsancom/mbridge/msdk/foundation/tools/u;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1517
    const/4 v0, 0x1

    goto :goto_1

    .line 1519
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1515
    :cond_2
    const/4 v0, -0x1

    .line 1522
    :goto_1
    return v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1126
    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    const-string v0, "utf-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1131
    :cond_0
    goto :goto_0

    .line 1129
    :catchall_0
    move-exception p0

    .line 1130
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SameTools"

    invoke-static {v1, v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1132
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static c(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 136
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 137
    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/net/ConnectivityManager;

    .line 138
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 140
    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    return v0
.end method

.method public static declared-synchronized c(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-class v0, Lccsancom/mbridge/msdk/foundation/tools/u;

    monitor-enter v0

    .line 1300
    nop

    .line 1301
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1303
    :try_start_1
    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Ljava/lang/String;Lccsanandroid/content/Context;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v1, 0x1

    .line 1306
    :cond_0
    goto :goto_0

    .line 1304
    :catch_0
    move-exception p0

    .line 1305
    goto :goto_0

    .line 1299
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 1308
    :cond_1
    :goto_0
    monitor-exit v0

    return v1
.end method

.method public static d(Lccsanandroid/content/Context;)F
    .locals 2

    .line 204
    nop

    .line 206
    const/high16 v0, 0x40200000    # 2.5f

    if-eqz p0, :cond_1

    .line 207
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-nez v1, :cond_0

    .line 209
    goto :goto_0

    .line 208
    :cond_0
    move v0, p0

    goto :goto_0

    .line 212
    :catch_0
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 214
    :cond_1
    :goto_0
    nop

    .line 216
    :goto_1
    return v0
.end method

.method public static final d()Ljava/lang/String;
    .locals 1

    .line 3054
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/i$a;->a()Lccsancom/mbridge/msdk/foundation/tools/i;

    move-result-object v0

    .line 1526
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/tools/i;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-class v0, Lccsancom/mbridge/msdk/foundation/tools/u;

    monitor-enter v0

    .line 1400
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1401
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 1403
    nop

    .line 1404
    nop

    .line 1405
    const/4 v2, 0x3

    .line 1407
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 1408
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->S()Z

    move-result v2

    .line 1409
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->Q()Z

    move-result v4

    .line 1410
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->R()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_0

    .line 1407
    :cond_0
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1413
    :goto_0
    if-eqz v4, :cond_c

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 1417
    :cond_1
    if-eqz v1, :cond_2

    sget-object v4, Lccsancom/mbridge/msdk/foundation/tools/u;->q:Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-interface {v4, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1418
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->q:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1421
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1422
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    .line 1423
    if-eqz v5, :cond_b

    array-length v6, v5

    if-lez v6, :cond_b

    .line 1424
    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/u;->a([Ljava/lang/StackTraceElement;)Ljava/util/List;

    move-result-object v5

    .line 1425
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1426
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1428
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1430
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1431
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1432
    const-string v8, "com.android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.os"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.app"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "java.lang.reflect.Method"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "android.view"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1433
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1434
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    :cond_3
    goto :goto_1

    .line 1439
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1441
    if-lez v2, :cond_6

    .line 1442
    nop

    :goto_2
    if-ge v3, v2, :cond_6

    .line 1443
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1444
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_5

    .line 1445
    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1450
    :cond_6
    const/4 v2, 0x0

    .line 1451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1452
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1453
    const-string v3, "1"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1456
    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 1457
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1458
    if-eqz v1, :cond_9

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1459
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->q:Ljava/util/Map;

    if-nez v1, :cond_8

    .line 1460
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->q:Ljava/util/Map;

    .line 1462
    :cond_8
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->q:Ljava/util/Map;

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1464
    :cond_9
    monitor-exit v0

    return-object v2

    .line 1466
    :cond_a
    :try_start_2
    const-string p0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1471
    :cond_b
    goto :goto_4

    .line 1414
    :cond_c
    :goto_3
    :try_start_3
    const-string p0, ""
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1399
    :catchall_0
    move-exception p0

    goto :goto_5

    .line 1469
    :catch_0
    move-exception p0

    .line 1470
    :try_start_4
    const-string v1, "SameTools"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :goto_4
    const-string p0, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1399
    :goto_5
    monitor-exit v0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6
.end method

.method public static e(Lccsanandroid/content/Context;)I
    .locals 3

    .line 358
    nop

    .line 360
    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 362
    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 364
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    goto :goto_0

    .line 365
    :catch_0
    move-exception p0

    .line 366
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 368
    :goto_0
    return p0
.end method

.method public static declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class v0, Lccsancom/mbridge/msdk/foundation/tools/u;

    monitor-enter v0

    .line 1486
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_id_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1487
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->r:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    sget-object v1, Lccsancom/mbridge/msdk/foundation/tools/u;->r:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 1490
    :cond_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 1485
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static f(Lccsanandroid/content/Context;)F
    .locals 0

    .line 377
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    .line 378
    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    return p0
.end method

.method public static f(Ljava/lang/String;)Z
    .locals 2

    .line 1530
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1531
    return v1

    .line 1533
    :cond_0
    nop

    .line 1535
    :try_start_0
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 1536
    if-eqz p0, :cond_1

    .line 1538
    const-string v0, "view"

    invoke-virtual {p0, v0}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1539
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1540
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    :cond_1
    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1543
    :catch_0
    move-exception p0

    .line 1544
    :try_start_1
    const-string v0, "SameTools"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1545
    nop

    .line 1547
    :goto_0
    return v1
.end method

.method public static g(Lccsanandroid/content/Context;)I
    .locals 1

    .line 954
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 955
    return v0

    .line 958
    :cond_0
    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/u;->n(Lccsanandroid/content/Context;)Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    .line 959
    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 960
    :catch_0
    move-exception p0

    .line 961
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 964
    return v0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 2

    .line 1553
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 1554
    return v1

    .line 1557
    :cond_0
    :try_start_0
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 1558
    if-eqz p0, :cond_3

    .line 1560
    const-string v0, "view"

    invoke-virtual {p0, v0}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1561
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1562
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    if-eqz p0, :cond_1

    .line 1564
    const/4 p0, 0x1

    return p0

    .line 1566
    :cond_1
    const/4 p0, 0x0

    return p0

    .line 1569
    :cond_2
    return v1

    .line 1572
    :cond_3
    return v1

    .line 1574
    :catch_0
    move-exception p0

    .line 1575
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SameTools"

    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    return v1
.end method

.method public static h(Lccsanandroid/content/Context;)I
    .locals 1

    .line 968
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 969
    return v0

    .line 972
    :cond_0
    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/u;->n(Lccsanandroid/content/Context;)Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    .line 973
    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 974
    :catch_0
    move-exception p0

    .line 975
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 978
    return v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    .line 1582
    nop

    .line 1583
    invoke-static/range {p0 .. p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 1584
    return-object v1

    .line 1586
    :cond_0
    invoke-static/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/same/a/d;->a(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 1587
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 1588
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1589
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/b;

    .line 1590
    if-eqz v3, :cond_5

    .line 1591
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/b;->c()J

    move-result-wide v4

    .line 1592
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/b;->d()J

    move-result-wide v6

    .line 3611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3612
    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x3e8

    cmp-long v16, v4, v10

    if-lez v16, :cond_2

    .line 3613
    mul-long v4, v4, v14

    add-long/2addr v6, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 3615
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v4

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v4

    .line 3616
    if-nez v4, :cond_3

    .line 3617
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v4

    .line 3619
    :cond_3
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide v4

    mul-long v4, v4, v14

    .line 3620
    add-long/2addr v6, v4

    cmp-long v4, v6, v8

    if-ltz v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    .line 1592
    :goto_1
    if-eqz v12, :cond_5

    .line 1593
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/b;->b()Ljava/util/List;

    move-result-object v3

    .line 1594
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 1595
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1599
    :cond_5
    goto :goto_0

    .line 1600
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1601
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1602
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1603
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1604
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1607
    :cond_7
    return-object v1
.end method

.method public static i(Lccsanandroid/content/Context;)I
    .locals 1

    .line 984
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 985
    return v0

    .line 987
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    .line 988
    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 989
    :catch_0
    move-exception p0

    .line 990
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 992
    return v0
.end method

.method public static j(Lccsanandroid/content/Context;)I
    .locals 1

    .line 998
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 999
    return v0

    .line 1001
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p0

    .line 1002
    iget p0, p0, Lccsanandroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1003
    :catch_0
    move-exception p0

    .line 1004
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1006
    return v0
.end method

.method public static k(Lccsanandroid/content/Context;)I
    .locals 5

    .line 1026
    const-string v0, "android"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 1027
    return v1

    .line 1030
    :cond_0
    nop

    .line 1031
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_showNavigationBar"

    const-string v4, "bool"

    invoke-virtual {v2, v3, v4, v0}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1032
    if-eqz v2, :cond_1

    .line 1033
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    invoke-virtual {v2, v3, v4, v0}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1034
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1038
    :cond_1
    goto :goto_0

    .line 1036
    :catch_0
    move-exception p0

    .line 1037
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1039
    :goto_0
    return v1
.end method

.method public static l(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 1145
    :try_start_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/os/PowerManager;

    .line 1146
    invoke-virtual {p0}, Lccsanandroid/os/PowerManager;->isScreenOn()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 1147
    :catchall_0
    move-exception p0

    .line 1148
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1150
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Lccsanandroid/content/Context;)I
    .locals 3

    .line 1185
    nop

    .line 1187
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1188
    return v0

    .line 1192
    :cond_0
    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_1

    .line 1193
    invoke-static {}, Lccsanandroid/webkit/WebView;->getCurrentWebViewPackage()Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    goto :goto_0

    .line 1195
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.webview"

    const/4 v2, 0x1

    .line 1196
    invoke-virtual {p0, v1, v2}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1199
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 1200
    if-nez v1, :cond_2

    .line 1201
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 1204
    :cond_2
    if-eqz p0, :cond_3

    iget-object v2, p0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v2, "77.0.3865.92"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1205
    const/4 p0, 0x5

    return p0

    .line 1208
    :cond_3
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->ab()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 1210
    :catch_0
    move-exception p0

    .line 1213
    return v0
.end method

.method private static n(Lccsanandroid/content/Context;)Lccsanandroid/util/DisplayMetrics;
    .locals 4

    .line 932
    if-nez p0, :cond_0

    .line 933
    const/4 p0, 0x0

    return-object p0

    .line 935
    :cond_0
    new-instance v0, Lccsanandroid/util/DisplayMetrics;

    invoke-direct {v0}, Lccsanandroid/util/DisplayMetrics;-><init>()V

    .line 937
    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/WindowManager;

    .line 938
    invoke-interface {v1}, Lccsanandroid/view/WindowManager;->getDefaultDisplay()Lccsanandroid/view/Display;

    move-result-object v1

    .line 940
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 941
    invoke-virtual {v1, v0}, Lccsanandroid/view/Display;->getRealMetrics(Lccsanandroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 943
    :cond_1
    invoke-virtual {v1, v0}, Lccsanandroid/view/Display;->getMetrics(Lccsanandroid/util/DisplayMetrics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    :goto_0
    goto :goto_1

    .line 945
    :catchall_0
    move-exception v0

    .line 946
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 947
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    .line 949
    :goto_1
    return-object v0
.end method
