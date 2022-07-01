.class final Lccsankotlin/coroutines/CombinedContext$writeReplace$1;
.super Lccsankotlin/jvm/internal/Lambda;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lccsankotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/coroutines/CombinedContext;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsankotlin/jvm/internal/Lambda;",
        "Lccsankotlin/jvm/functions/Function2<",
        "Lccsankotlin/Unit;",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "Lccsankotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "element",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "invoke",
        "(Lccsankotlin/Unit;Lccsankotlin/coroutines/CoroutineContext$Element;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field final synthetic $elements:[Lccsankotlin/coroutines/CoroutineContext;

.field final synthetic $index:Lccsankotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>([Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lccsankotlin/coroutines/CombinedContext$writeReplace$1;->$elements:[Lccsankotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lccsankotlin/coroutines/CombinedContext$writeReplace$1;->$index:Lccsankotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lccsankotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 112
    check-cast p1, Lccsankotlin/Unit;

    check-cast p2, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Lccsankotlin/coroutines/CombinedContext$writeReplace$1;->invoke(Lccsankotlin/Unit;Lccsankotlin/coroutines/CoroutineContext$Element;)V

    sget-object p1, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lccsankotlin/Unit;Lccsankotlin/coroutines/CoroutineContext$Element;)V
    .locals 4
    .param p1, "$noName_0"    # Lccsankotlin/Unit;
    .param p2, "element"    # Lccsankotlin/coroutines/CoroutineContext$Element;

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lccsankotlin/coroutines/CombinedContext$writeReplace$1;->$elements:[Lccsankotlin/coroutines/CoroutineContext;

    iget-object v1, p0, Lccsankotlin/coroutines/CombinedContext$writeReplace$1;->$index:Lccsankotlin/jvm/internal/Ref$IntRef;

    iget v2, v1, Lccsankotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lccsankotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v1, p2

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext;

    aput-object v1, v0, v2

    return-void
.end method
