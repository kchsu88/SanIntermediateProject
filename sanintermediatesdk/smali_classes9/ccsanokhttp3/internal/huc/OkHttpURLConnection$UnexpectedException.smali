.class final Lccsanokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;
.super Ljava/io/IOException;
.source "OkHttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/huc/OkHttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnexpectedException"
.end annotation


# static fields
.field static final INTERCEPTOR:Lccsanokhttp3/Interceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 597
    new-instance v0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException$1;

    invoke-direct {v0}, Lccsanokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException$1;-><init>()V

    sput-object v0, Lccsanokhttp3/internal/huc/OkHttpURLConnection$UnexpectedException;->INTERCEPTOR:Lccsanokhttp3/Interceptor;

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 608
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 609
    return-void
.end method
