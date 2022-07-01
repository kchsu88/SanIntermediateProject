.class public Lccsancom/vungle/warren/network/APIFactory;
.super Ljava/lang/Object;
.source "APIFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private baseUrl:Lccsanokhttp3/HttpUrl;

.field private okHttpClient:Lccsanokhttp3/Call$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lccsancom/vungle/warren/network/APIFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/network/APIFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanokhttp3/Call$Factory;Ljava/lang/String;)V
    .locals 4
    .param p1, "callFactory"    # Lccsanokhttp3/Call$Factory;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p2}, Lccsanokhttp3/HttpUrl;->get(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/network/APIFactory;->baseUrl:Lccsanokhttp3/HttpUrl;

    .line 18
    iput-object p1, p0, Lccsancom/vungle/warren/network/APIFactory;->okHttpClient:Lccsanokhttp3/Call$Factory;

    .line 20
    invoke-virtual {v0}, Lccsanokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object v0

    .line 21
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    return-void

    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baseUrl must end in /: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public createAPI()Lccsancom/vungle/warren/network/VungleApi;
    .locals 3

    .line 28
    new-instance v0, Lccsancom/vungle/warren/network/VungleApiImpl;

    iget-object v1, p0, Lccsancom/vungle/warren/network/APIFactory;->baseUrl:Lccsanokhttp3/HttpUrl;

    iget-object v2, p0, Lccsancom/vungle/warren/network/APIFactory;->okHttpClient:Lccsanokhttp3/Call$Factory;

    invoke-direct {v0, v1, v2}, Lccsancom/vungle/warren/network/VungleApiImpl;-><init>(Lccsanokhttp3/HttpUrl;Lccsanokhttp3/Call$Factory;)V

    return-object v0
.end method
