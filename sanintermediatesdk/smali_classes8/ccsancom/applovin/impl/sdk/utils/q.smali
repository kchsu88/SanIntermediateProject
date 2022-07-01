.class public Lccsancom/applovin/impl/sdk/utils/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/utils/q$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/r;

.field private b:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lccsancom/applovin/impl/sdk/utils/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/StringBuilder;

.field private d:J

.field private e:Lccsancom/applovin/impl/sdk/utils/q$a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q;->a:Lccsancom/applovin/impl/sdk/r;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No sdk specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/utils/q;J)J
    .locals 0

    iput-wide p1, p0, Lccsancom/applovin/impl/sdk/utils/q;->d:J

    return-wide p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/utils/q;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/utils/q;->a:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/utils/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/q;

    invoke-direct {v0, p1}, Lccsancom/applovin/impl/sdk/utils/q;-><init>(Lccsancom/applovin/impl/sdk/k;)V

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/sdk/utils/q;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/utils/q;Lccsancom/applovin/impl/sdk/utils/q$a;)Lccsancom/applovin/impl/sdk/utils/q$a;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q;->e:Lccsancom/applovin/impl/sdk/utils/q$a;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/utils/q;Lccsanorg/xml/sax/Attributes;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/utils/q;->a(Lccsanorg/xml/sax/Attributes;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private a(Lccsanorg/xml/sax/Attributes;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/xml/sax/Attributes;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lccsanorg/xml/sax/Attributes;->getLength()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Lccsanorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2}, Lccsanorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/utils/q;)J
    .locals 2

    iget-wide v0, p0, Lccsancom/applovin/impl/sdk/utils/q;->d:J

    return-wide v0
.end method

.method static synthetic c(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/utils/q;->b:Ljava/util/Stack;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/sdk/utils/q;)Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/utils/q;->c:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic e(Lccsancom/applovin/impl/sdk/utils/q;)Lccsancom/applovin/impl/sdk/utils/q$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/utils/q;->e:Lccsancom/applovin/impl/sdk/utils/q$a;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/utils/p;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/utils/q;->c:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/utils/q;->b:Ljava/util/Stack;

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/utils/q;->e:Lccsancom/applovin/impl/sdk/utils/q$a;

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/q$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/sdk/utils/q$1;-><init>(Lccsancom/applovin/impl/sdk/utils/q;)V

    invoke-static {p1, v0}, Lccsanandroid/util/Xml;->parse(Ljava/lang/String;Lccsanorg/xml/sax/ContentHandler;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/q;->e:Lccsancom/applovin/impl/sdk/utils/q$a;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lccsanorg/xml/sax/SAXException;

    const-string v0, "Unable to parse XML into node"

    invoke-direct {p1, v0}, Lccsanorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parse. No XML specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
