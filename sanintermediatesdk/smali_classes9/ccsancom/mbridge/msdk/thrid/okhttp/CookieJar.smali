.class public interface abstract Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final NO_COOKIES:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar$1;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar$1;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;->NO_COOKIES:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    return-void
.end method


# virtual methods
.method public abstract loadForRequest(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/util/List;
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
.end method

.method public abstract saveFromResponse(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;",
            ">;)V"
        }
    .end annotation
.end method
