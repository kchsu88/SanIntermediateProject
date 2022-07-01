.class Lccsanokhttp3/CookieJar$1;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lccsanokhttp3/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/CookieJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadForRequest(Lccsanokhttp3/HttpUrl;)Ljava/util/List;
    .locals 1
    .param p1, "url"    # Lccsanokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lccsanokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveFromResponse(Lccsanokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0
    .param p1, "url"    # Lccsanokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lccsanokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Cookie;>;"
    return-void
.end method
