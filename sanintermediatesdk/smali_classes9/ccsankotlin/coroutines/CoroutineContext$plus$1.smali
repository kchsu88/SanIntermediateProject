.class final Lccsankotlin/coroutines/CoroutineContext$plus$1;
.super Lccsankotlin/jvm/internal/Lambda;
.source "CoroutineContext.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/Lambda;",
        "Lccsankotlin/jvm/functions/Function2<",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "Lccsankotlin/coroutines/CoroutineContext;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "acc",
        "element",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lccsankotlin/coroutines/CoroutineContext$plus$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lccsankotlin/coroutines/CoroutineContext$plus$1;

    invoke-direct {v0}, Lccsankotlin/coroutines/CoroutineContext$plus$1;-><init>()V

    sput-object v0, Lccsankotlin/coroutines/CoroutineContext$plus$1;->INSTANCE:Lccsankotlin/coroutines/CoroutineContext$plus$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lccsankotlin/coroutines/CoroutineContext;

    check-cast p2, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Lccsankotlin/coroutines/CoroutineContext$plus$1;->invoke(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 6
    .param p1, "acc"    # Lccsankotlin/coroutines/CoroutineContext;
    .param p2, "element"    # Lccsankotlin/coroutines/CoroutineContext$Element;

    const-string v0, "acc"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-interface {p2}, Lccsankotlin/coroutines/CoroutineContext$Element;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsankotlin/coroutines/CoroutineContext;->minusKey(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 34
    .local v0, "removed":Lccsankotlin/coroutines/CoroutineContext;
    sget-object v1, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    if-ne v0, v1, :cond_0

    move-object v1, p2

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext;

    goto :goto_1

    .line 36
    :cond_0
    sget-object v1, Lccsankotlin/coroutines/ContinuationInterceptor;->Key:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lccsankotlin/coroutines/CoroutineContext;->get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lccsankotlin/coroutines/ContinuationInterceptor;

    .line 37
    .local v1, "interceptor":Lccsankotlin/coroutines/ContinuationInterceptor;
    if-nez v1, :cond_1

    new-instance v2, Lccsankotlin/coroutines/CombinedContext;

    invoke-direct {v2, v0, p2}, Lccsankotlin/coroutines/CombinedContext;-><init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)V

    goto :goto_0

    .line 38
    :cond_1
    sget-object v2, Lccsankotlin/coroutines/ContinuationInterceptor;->Key:Lccsankotlin/coroutines/ContinuationInterceptor$Key;

    check-cast v2, Lccsankotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v2}, Lccsankotlin/coroutines/CoroutineContext;->minusKey(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 39
    .local v2, "left":Lccsankotlin/coroutines/CoroutineContext;
    sget-object v3, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    if-ne v2, v3, :cond_2

    new-instance v3, Lccsankotlin/coroutines/CombinedContext;

    move-object v4, p2

    check-cast v4, Lccsankotlin/coroutines/CoroutineContext;

    move-object v5, v1

    check-cast v5, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-direct {v3, v4, v5}, Lccsankotlin/coroutines/CombinedContext;-><init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)V

    move-object v2, v3

    goto :goto_0

    .line 40
    :cond_2
    new-instance v3, Lccsankotlin/coroutines/CombinedContext;

    new-instance v4, Lccsankotlin/coroutines/CombinedContext;

    invoke-direct {v4, v2, p2}, Lccsankotlin/coroutines/CombinedContext;-><init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)V

    check-cast v4, Lccsankotlin/coroutines/CoroutineContext;

    move-object v5, v1

    check-cast v5, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-direct {v3, v4, v5}, Lccsankotlin/coroutines/CombinedContext;-><init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)V

    move-object v2, v3

    .line 39
    .end local v2    # "left":Lccsankotlin/coroutines/CoroutineContext;
    :goto_0
    nop

    .line 37
    check-cast v2, Lccsankotlin/coroutines/CoroutineContext;

    move-object v1, v2

    .line 34
    .end local v0    # "removed":Lccsankotlin/coroutines/CoroutineContext;
    .end local v1    # "interceptor":Lccsankotlin/coroutines/ContinuationInterceptor;
    :goto_1
    return-object v1
.end method
