.class public abstract Lccsanokhttp3/internal/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# static fields
.field public static instance:Lccsanokhttp3/internal/Internal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initializeInstanceForTests()V
    .locals 1

    .line 39
    new-instance v0, Lccsanokhttp3/OkHttpClient;

    invoke-direct {v0}, Lccsanokhttp3/OkHttpClient;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public abstract addLenient(Lccsanokhttp3/Headers$Builder;Ljava/lang/String;)V
.end method

.method public abstract addLenient(Lccsanokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract apply(Lccsanokhttp3/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract code(Lccsanokhttp3/Response$Builder;)I
.end method

.method public abstract equalsNonHost(Lccsanokhttp3/Address;Lccsanokhttp3/Address;)Z
.end method

.method public abstract exchange(Lccsanokhttp3/Response;)Lccsanokhttp3/internal/connection/Exchange;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract initExchange(Lccsanokhttp3/Response$Builder;Lccsanokhttp3/internal/connection/Exchange;)V
.end method

.method public abstract newWebSocketCall(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;)Lccsanokhttp3/Call;
.end method

.method public abstract realConnectionPool(Lccsanokhttp3/ConnectionPool;)Lccsanokhttp3/internal/connection/RealConnectionPool;
.end method
