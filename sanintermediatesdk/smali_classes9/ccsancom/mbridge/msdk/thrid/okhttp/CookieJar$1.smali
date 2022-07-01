.class final Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar$1;
.super Ljava/lang/Object;
.source "CookieJar.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.method public loadForRequest(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/util/List;
    .locals 1
    .param p1, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveFromResponse(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;Ljava/util/List;)V
    .locals 0
    .param p1, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;>;"
    return-void
.end method
