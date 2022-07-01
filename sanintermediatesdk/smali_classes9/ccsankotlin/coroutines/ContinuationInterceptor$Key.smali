.class public final Lccsankotlin/coroutines/ContinuationInterceptor$Key;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lccsankotlin/coroutines/CoroutineContext$Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/coroutines/ContinuationInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsankotlin/coroutines/CoroutineContext$Key<",
        "Lccsankotlin/coroutines/ContinuationInterceptor;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lccsankotlin/coroutines/ContinuationInterceptor$Key;",
        "Lccsankotlin/coroutines/CoroutineContext$Key;",
        "Lccsankotlin/coroutines/ContinuationInterceptor;",
        "()V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lccsankotlin/coroutines/ContinuationInterceptor$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    invoke-direct {v0}, Lccsankotlin/coroutines/ContinuationInterceptor$Key;-><init>()V

    sput-object v0, Lccsankotlin/coroutines/ContinuationInterceptor$Key;->$$INSTANCE:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
