.class Lccsanokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException$1;
.super Ljava/lang/Object;
.source "OkHttpURLConnection.java"

# interfaces
.implements Lccsanokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lccsanokhttp3/Interceptor$Chain;)Lccsanokhttp3/Response;
    .locals 2
    .param p1, "chain"    # Lccsanokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    :try_start_0
    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->request()Lccsanokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsanokhttp3/Interceptor$Chain;->proceed(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 601
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Lccsanokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;

    invoke-direct {v1, v0}, Lccsanokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
