.class public Lccsancom/applovin/impl/sdk/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/m$b;,
        Lccsancom/applovin/impl/sdk/m$a;
    }
.end annotation


# static fields
.field private static h:Ljava/lang/String;

.field private static i:I

.field private static final j:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/applovin/impl/sdk/m$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Lccsanandroid/content/Context;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private final k:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lccsancom/applovin/impl/sdk/m;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method protected constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/m;->e:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/m;->k:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/m;->b:Lccsancom/applovin/impl/sdk/r;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->o()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/m;->d:Ljava/util/Map;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->q()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/m;->f:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A()D
    .locals 6

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v4, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private B()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.software.leanback"

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v1, "android.hardware.type.television"

    goto :goto_0
.end method

.method private C()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lccsanandroid/hardware/SensorManager;->getDefaultSensor(I)Lccsanandroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private D()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private E()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "DataCollector"

    const-string v3, "Unable to collect carrier"

    invoke-virtual {v1, v2, v3, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private F()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->G()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->H()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    return v0
.end method

.method private G()Z
    .locals 2

    sget-object v0, Lccsanandroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "lz}$blpz"

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/sdk/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private H()Z
    .locals 7

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "&zpz}ld&hyy&Z|yl{|zl{\'hyb"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "&zk`g&z|"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v5, "&zpz}ld&k`g&z|"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "&zpz}ld&qk`g&z|"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "&mh}h&efjhe&qk`g&z|"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "&mh}h&efjhe&k`g&z|"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "&zpz}ld&zm&qk`g&z|"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "&zpz}ld&k`g&oh`ezhol&z|"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "&mh}h&efjhe&z|"

    aput-object v5, v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v5, v1, v2

    invoke-direct {p0, v5}, Lccsancom/applovin/impl/sdk/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/m;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->z()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "receiver"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "speaker"

    return-object p1

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    if-ne p1, v0, :cond_3

    const-string p1, "bluetootha2dpoutput"

    return-object p1

    :cond_3
    const/16 v0, 0xd

    if-eq p1, v0, :cond_7

    const/16 v0, 0x13

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    const/16 v0, 0xc

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v0, 0x9

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    :goto_0
    const-string p1, "hdmioutput"

    return-object p1

    :cond_7
    :goto_1
    const-string p1, "lineout"

    return-object p1

    :cond_8
    :goto_2
    const-string p1, "headphones"

    return-object p1
.end method

.method private a(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "tds"

    const-string v1, "fs"

    const-string v2, "DataCollector"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/f;->a(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Point;

    move-result-object p1

    iget v4, p1, Lccsanandroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "dx"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Lccsanandroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "dy"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    sget-object p1, Lccsancom/applovin/impl/sdk/m;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/m$a;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/m;->l()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lccsancom/applovin/impl/sdk/m$a;

    invoke-direct {p1}, Lccsancom/applovin/impl/sdk/m$a;-><init>()V

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "inc"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/m;->j()Lccsancom/applovin/impl/sdk/m$a;

    move-result-object p1

    :goto_0
    iget-object v4, p1, Lccsancom/applovin/impl/sdk/m$a;->b:Ljava/lang/String;

    invoke-static {v4}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "idfa"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-boolean p1, p1, Lccsancom/applovin/impl/sdk/m$a;->a:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v4, "dnt"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->b()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object p1

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {p1, v4}, Lccsancom/applovin/impl/sdk/h$a;->a(Lccsanandroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v4, "huc"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->a()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object p1

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {p1, v4}, Lccsancom/applovin/impl/sdk/h$a;->a(Lccsanandroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v4, "aru"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-static {}, Lccsancom/applovin/impl/sdk/h;->c()Lccsancom/applovin/impl/sdk/h$a;

    move-result-object p1

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {p1, v4}, Lccsancom/applovin/impl/sdk/h$a;->a(Lccsanandroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v4, "dns"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->dA:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->t()Lccsancom/applovin/impl/sdk/m$b;

    move-result-object p1

    iget v4, p1, Lccsancom/applovin/impl/sdk/m$b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "act"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Lccsancom/applovin/impl/sdk/m$b;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "acm"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->dJ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->F()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v4, "adr"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p2, :cond_8

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->k:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->z()Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_9

    const-string/jumbo p2, "volume"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :try_start_0
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "screen_brightness"

    invoke-static {p1, p2}, Lccsanandroid/provider/Settings$System;->getInt(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x437f0000    # 255.0f

    div-float/2addr p1, p2

    const-string/jumbo p2, "sb"

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float p1, p1, v4

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lccsanandroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/m;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v4, "Unable to collect screen brightness"

    invoke-virtual {p2, v2, v4, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dM:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/y;->b(Lccsancom/applovin/impl/sdk/k;)V

    invoke-static {}, Lccsancom/applovin/impl/sdk/y;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string/jumbo p2, "ua"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dC:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    :try_start_1
    invoke-static {}, Lccsanandroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsanandroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/m;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "Unable to collect total & free space."

    invoke-virtual {p2, v2, v0, p1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    :goto_3
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dD:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string p2, "activity"

    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/ActivityManager;

    new-instance p2, Lccsanandroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p2}, Lccsanandroid/app/ActivityManager$MemoryInfo;-><init>()V

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Lccsanandroid/app/ActivityManager;->getMemoryInfo(Lccsanandroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v0, p2, Lccsanandroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "fm"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p2, Lccsanandroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v0, "tm"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p2, Lccsanandroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v0, "lmt"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, p2, Lccsanandroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "lm"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dE:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string p2, "android.permission.READ_PHONE_STATE"

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/utils/f;->a(Ljava/lang/String;Lccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->f()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Lccsanandroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "rat"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object p1

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dO:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lccsancom/applovin/impl/sdk/m;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const-string/jumbo v0, "wvvc"

    if-nez p2, :cond_e

    const/4 p2, 0x0

    :try_start_2
    sput-object p1, Lccsancom/applovin/impl/sdk/m;->h:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p1

    iget v1, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p1, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    sput p1, Lccsancom/applovin/impl/sdk/m;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    sput p2, Lccsancom/applovin/impl/sdk/m;->i:I

    goto :goto_4

    :cond_e
    sget p1, Lccsancom/applovin/impl/sdk/m;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dB:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->w()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    const-string/jumbo p2, "so"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "orientation_lock"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dF:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->isVPNConnected()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p2, "vs"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/PowerManager;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lccsanandroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "lpm"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dP:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ag()Lccsancom/applovin/impl/sdk/utils/l;

    move-result-object p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ag()Lccsancom/applovin/impl/sdk/utils/l;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/utils/l;->c()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "da"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dQ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ag()Lccsancom/applovin/impl/sdk/utils/l;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ag()Lccsancom/applovin/impl/sdk/utils/l;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/utils/l;->b()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p2, "dm"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ah()Lccsancom/applovin/impl/sdk/f;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/f;->a()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "mute_switch"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/g;->f(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "network"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->x()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_14

    const-string p2, "kb"

    invoke-interface {v3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v3
.end method

.method public static a(Lccsanandroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/applovin/impl/sdk/m$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/m$1;-><init>(Lccsanandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dG:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "af"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->u()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dH:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "font"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->v()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dN:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/y;->c(Lccsancom/applovin/impl/sdk/k;)V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dM:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/y;->b(Lccsancom/applovin/impl/sdk/k;)V

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dL:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "sua"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "http.agent"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dI:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "network_restricted"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->r()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->y()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "htn"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Lccsanandroid/provider/Settings$Secure;->getInt(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Lccsanandroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p1

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/CollectionUtils;->explode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/sdk/m$a;
    .locals 0

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/m;->c(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/sdk/m$a;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    new-array v2, v0, [C

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    const/16 v4, 0x9

    :goto_1
    if-ltz v4, :cond_0

    aget-char v5, v2, v3

    aget v6, v1, v4

    xor-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v2, v3

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :array_0
    .array-data 4
        0xb
        0xc
        0xa
        0x3
        0x2
        0x1
        0xf
        0xa
        0xf
        0xe
    .end array-data
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/m;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/m;->k:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private static c(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/sdk/m$a;
    .locals 4

    invoke-static {}, Lccsancom/applovin/impl/sdk/m;->s()Z

    move-result v0

    const-string v1, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    const-string v2, "DataCollector"

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lccsancom/applovin/impl/sdk/m$a;

    invoke-direct {v0}, Lccsancom/applovin/impl/sdk/m$a;-><init>()V

    invoke-static {p0}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    iput-boolean v3, v0, Lccsancom/applovin/impl/sdk/m$a;->a:Z

    invoke-virtual {p0}, Lccsancom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lccsancom/applovin/impl/sdk/m$a;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    invoke-static {v2, v1, p0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance p0, Lccsancom/applovin/impl/sdk/m$a;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m$a;-><init>()V

    return-object p0
.end method

.method static synthetic m()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/m;->j:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private n()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "api_level"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "brand"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsanandroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v2, "brand_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsanandroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v2, "hardware"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/m;->k()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "sim"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/impl/sdk/m;->s()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "aida"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "locale"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "os"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsanandroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "revision"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->A()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "tz_offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->C()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "gy"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->D()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->E()Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->isTablet(Lccsanandroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_tablet"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->B()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "tv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Lccsanandroid/util/DisplayMetrics;->density:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string v3, "adns"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "adnsd"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lccsanandroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "xdpi"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v1, Lccsanandroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-string/jumbo v3, "ydpi"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/f;->a(Lccsanandroid/content/Context;)Lccsanandroid/graphics/Point;

    move-result-object v2

    iget v3, v2, Lccsanandroid/graphics/Point;->x:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v2, v2, Lccsanandroid/graphics/Point;->y:I

    int-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v1, v1, Lccsanandroid/util/DisplayMetrics;->xdpi:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string/jumbo v2, "screen_size_in"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "bt_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->getMetaData(Lccsancom/applovin/sdk/AppLovinSdkSettings;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "GraphicsMemorySizeMegabytes"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    const-string v2, "gms_mb"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Graphics memory size megabytes couldn\'t be parsed to an integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DataCollector"

    invoke-virtual {v2, v3, v1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/util/Map;)V

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->getOrientation(Lccsanandroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "portrait"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "landscape"

    goto :goto_0

    :cond_1
    const-string v0, "none"

    :goto_0
    return-object v0
.end method

.method private q()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lccsanandroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v6}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Lccsanandroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, v2, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lccsanandroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    goto :goto_0

    :catchall_1
    move-exception v6

    move-object v6, v5

    :goto_0
    invoke-virtual {v1, v2}, Lccsanandroid/content/pm/PackageManager;->getApplicationLabel(Lccsanandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v7, "app_name"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    if-eqz v6, :cond_0

    iget-object v7, v6, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    move-object v7, v1

    :goto_1
    const-string v8, "app_version"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_1

    iget v7, v6, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_2

    :cond_1
    const/4 v7, -0x1

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "app_version_code"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "package_name"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->toShortSHA1Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "vz"

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    move-object v5, v1

    :goto_3
    const-string v7, "installer_name"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/n;->a(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "tg"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v5}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/Utils;->isPubInDebugMode(Lccsanandroid/content/Context;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "debug"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v7, "ia"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v7, Lccsancom/applovin/impl/sdk/c/d;->d:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {v5, v7}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-eqz v5, :cond_3

    const-string v3, "ia_v2"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v7, Lccsancom/applovin/impl/sdk/c/d;->d:Lccsancom/applovin/impl/sdk/c/d;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :goto_4
    sget-object v3, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string/jumbo v4, "sdk_version"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->getUserEngagementSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ue_sdk_version"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v3, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->W:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "api_did"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->N()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "first_install"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->O()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "first_install_v2"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_5

    iget-wide v3, v6, Lccsanandroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_5
    const-string v3, "first_install_v3_ms"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v2, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "target_sdk"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/Utils;->tryToGetExoPlayerVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "epv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private r()Z
    .locals 5

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v2

    const-string v3, "DataCollector"

    const-string v4, "Unable to collect constrained network info."

    invoke-virtual {v2, v3, v4, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v1
.end method

.method private static s()Z
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->checkClassExistence(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private t()Lccsancom/applovin/impl/sdk/m$b;
    .locals 5

    new-instance v0, Lccsancom/applovin/impl/sdk/m$b;

    invoke-direct {v0}, Lccsancom/applovin/impl/sdk/m$b;-><init>()V

    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    const-string v3, "level"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v4, "scale"

    invoke-virtual {v1, v4, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    if-lez v3, :cond_2

    if-lez v4, :cond_2

    int-to-float v3, v3

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    iput v3, v0, Lccsancom/applovin/impl/sdk/m$b;->b:I

    goto :goto_2

    :cond_2
    iput v2, v0, Lccsancom/applovin/impl/sdk/m$b;->b:I

    :goto_2
    if-eqz v1, :cond_3

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_3
    iput v2, v0, Lccsancom/applovin/impl/sdk/m$b;->a:I

    return-object v0
.end method

.method private u()J
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Lccsanandroid/provider/Settings$Secure;->getString(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "AccessibilityMenuService"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x100

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-string v3, "SelectToSpeakService"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x200

    or-long/2addr v1, v3

    :cond_1
    const-string v3, "SoundAmplifierService"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    :cond_2
    const-string v3, "SpeechToTextAccessibilityService"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x80

    or-long/2addr v1, v3

    :cond_3
    const-string v3, "SwitchAccessService"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x4

    or-long/2addr v1, v3

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v3, 0x20

    if-ne v0, v3, :cond_5

    const-wide/16 v3, 0x400

    or-long/2addr v1, v3

    :cond_5
    const-string v0, "accessibility_enabled"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v3, 0x8

    or-long/2addr v1, v3

    :cond_6
    const-string/jumbo v0, "touch_exploration_enabled"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-wide/16 v3, 0x10

    or-long/2addr v1, v3

    :cond_7
    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "accessibility_display_inversion_enabled"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/16 v3, 0x20

    or-long/2addr v1, v3

    :cond_8
    const-string/jumbo v0, "skip_first_use_hints"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v3, 0x40

    or-long/2addr v1, v3

    :cond_9
    return-wide v1
.end method

.method private v()F
    .locals 4

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getContentResolver()Lccsanandroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    invoke-static {v0, v1}, Lccsanandroid/provider/Settings$System;->getFloat(Lccsanandroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Lccsanandroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "DataCollector"

    const-string v3, "Error collecting font scale"

    invoke-virtual {v1, v2, v3, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private w()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/media/AudioManager;

    if-eqz v0, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->e()Z

    move-result v2

    const-string v3, ","

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lccsanandroid/media/AudioManager;->getDevices(I)[Lccsanandroid/media/AudioDeviceInfo;

    move-result-object v0

    array-length v2, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lccsanandroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5}, Lccsancom/applovin/impl/sdk/m;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lccsanandroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "headphones"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Lccsanandroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bluetootha2dpoutput"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2c

    if-ne v0, v2, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "DataCollector"

    const-string v3, "No sound outputs detected"

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method private x()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/res/Configuration;->getLocales()Lccsanandroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lccsanandroid/os/LocaleList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Lccsanandroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    return-object v1
.end method

.method private y()Z
    .locals 2

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->al()Lccsanandroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lccsanandroid/view/Window;->getDecorView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getRootWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Lccsanandroid/view/WindowInsets;->getDisplayCutout()Lccsanandroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    invoke-virtual {v0}, Lccsanandroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private z()Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dK:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lccsanandroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 4

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/m;->n()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->eo:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->getServerAdjustedUnixTimestampMillis(Lccsancom/applovin/impl/sdk/k;)J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v2}, Lccsancom/applovin/impl/sdk/utils/k;->a(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/util/Map;ZZ)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0, p2}, Lccsancom/applovin/impl/sdk/m;->a(Z)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/m;->g()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/m;->i()Ljava/util/Map;

    move-result-object v2

    if-eqz p3, :cond_1

    const-string p3, "device_info"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "app_info"

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_0

    const-string p2, "connection_info"

    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_3

    const-string p2, "ad_info"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    :goto_0
    const-string p1, "accept"

    const-string p2, "custom_size,launch_app,video"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "format"

    const-string p2, "json"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->s()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mediation_provider"

    invoke-static {p2, p1, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->putObjectForStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dz:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "plugin_version"

    invoke-static {p2, p1, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->putObjectForStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sdk_key"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/m;->h()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/b;->dW:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object p1

    sget-object p2, Lccsancom/applovin/impl/sdk/d/f;->b:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "li"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lccsancom/applovin/impl/sdk/d/f;->d:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string/jumbo p3, "si"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lccsancom/applovin/impl/sdk/d/f;->h:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "pf"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lccsancom/applovin/impl/sdk/d/f;->o:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "mpf"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lccsancom/applovin/impl/sdk/d/f;->i:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "gpf"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lccsancom/applovin/impl/sdk/d/f;->m:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "asoac"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rid"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->d:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1, p1}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->d:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->f:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/m;->a(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->d:Ljava/util/Map;

    invoke-direct {p0, v1}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/util/Map;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/sdk/m;->g:Z

    return v0
.end method

.method public g()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->f:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-boolean v1, p0, Lccsancom/applovin/impl/sdk/m;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v2, "test_ads"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ds:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->m()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cuid"

    invoke-static {v2, v1, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->putObjectForStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dv:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compass_random_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dx:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applovin_random_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->q()Lccsancom/applovin/sdk/AppLovinUserSegment;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/applovin/sdk/AppLovinUserSegment;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "user_segment_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public h()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ab:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "sc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ac:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "sc2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ad:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "sc3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ae:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "server_installed_at"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/d;->y:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "persisted_data"

    invoke-static {v2, v1, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->putObjectForStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public i()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->P()Lccsancom/applovin/impl/sdk/network/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/b;->a()Lccsancom/applovin/impl/sdk/network/b$b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/b$b;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lrm_ts_ms"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/b$b;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lrm_url"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/b$b;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "lrm_ct_ms"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/b$b;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "lrm_rs"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lccsancom/applovin/impl/sdk/m$a;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->c:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/m;->c(Lccsanandroid/content/Context;)Lccsancom/applovin/impl/sdk/m$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dr:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lccsancom/applovin/impl/sdk/m$a;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dq:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lccsancom/applovin/impl/sdk/m$a;->b:Ljava/lang/String;

    :cond_0
    sget-object v1, Lccsancom/applovin/impl/sdk/m;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lccsancom/applovin/impl/sdk/m$a;

    invoke-direct {v0}, Lccsancom/applovin/impl/sdk/m$a;-><init>()V

    :goto_0
    iget-object v1, v0, Lccsancom/applovin/impl/sdk/m$a;->b:Ljava/lang/String;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinSdkSettings;->getTestDeviceAdvertisingIds()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lccsancom/applovin/impl/sdk/m$a;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lccsancom/applovin/impl/sdk/m;->g:Z

    return-object v0
.end method

.method public k()Z
    .locals 2

    sget-object v0, Lccsanandroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "goldfish,vbox"

    invoke-direct {p0, v0, v1}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lccsanandroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "ranchu,generic,vbox"

    invoke-direct {p0, v0, v1}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Genymotion"

    invoke-direct {p0, v0, v1}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Android SDK built for x86"

    invoke-direct {p0, v0, v1}, Lccsancom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public l()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/e/f;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    new-instance v3, Lccsancom/applovin/impl/sdk/m$2;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/sdk/m$2;-><init>(Lccsancom/applovin/impl/sdk/m;)V

    invoke-direct {v1, v2, v3}, Lccsancom/applovin/impl/sdk/e/f;-><init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/e/f$a;)V

    sget-object v2, Lccsancom/applovin/impl/sdk/e/o$a;->d:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/e/y;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/m;->a:Lccsancom/applovin/impl/sdk/k;

    new-instance v3, Lccsancom/applovin/impl/sdk/m$3;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/sdk/m$3;-><init>(Lccsancom/applovin/impl/sdk/m;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;ZLjava/lang/Runnable;)V

    sget-object v2, Lccsancom/applovin/impl/sdk/e/o$a;->h:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method
