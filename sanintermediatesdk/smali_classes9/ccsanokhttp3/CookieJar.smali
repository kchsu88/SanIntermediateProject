.class public interface abstract Lccsanokhttp3/CookieJar;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final NO_COOKIES:Lccsanokhttp3/CookieJar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lccsanokhttp3/CookieJar$1;

    invoke-direct {v0}, Lccsanokhttp3/CookieJar$1;-><init>()V

    sput-object v0, Lccsanokhttp3/CookieJar;->NO_COOKIES:Lccsanokhttp3/CookieJar;

    return-void
.end method


# virtual methods
.method public abstract loadForRequest(Lccsanokhttp3/HttpUrl;)Ljava/util/List;
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
.end method

.method public abstract saveFromResponse(Lccsanokhttp3/HttpUrl;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lccsanokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation
.end method
