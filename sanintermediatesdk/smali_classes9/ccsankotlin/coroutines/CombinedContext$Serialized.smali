.class final Lccsankotlin/coroutines/CombinedContext$Serialized;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsankotlin/coroutines/CombinedContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Serialized"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/coroutines/CombinedContext$Serialized$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,196:1\n12947#2,3:197\n*S KotlinDebug\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext$Serialized\n*L\n193#1:197,3\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0002\u0018\u0000 \u000c2\u00060\u0001j\u0002`\u0002:\u0001\u000cB\u0013\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\n\u001a\u00020\u000bH\u0002R\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\n\n\u0002\u0010\t\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lccsankotlin/coroutines/CombinedContext$Serialized;",
        "Ljava/io/Serializable;",
        "Lccsankotlin/io/Serializable;",
        "elements",
        "",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "([Lccsankotlin/coroutines/CoroutineContext;)V",
        "getElements",
        "()[Lccsankotlin/coroutines/CoroutineContext;",
        "[Lccsankotlin/coroutines/CoroutineContext;",
        "readResolve",
        "",
        "Companion",
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
.field public static final Companion:Lccsankotlin/coroutines/CombinedContext$Serialized$Companion;

.field private static final serialVersionUID:J


# instance fields
.field private final elements:[Lccsankotlin/coroutines/CoroutineContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lccsankotlin/coroutines/CombinedContext$Serialized$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsankotlin/coroutines/CombinedContext$Serialized$Companion;-><init>(Lccsankotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lccsankotlin/coroutines/CombinedContext$Serialized;->Companion:Lccsankotlin/coroutines/CombinedContext$Serialized$Companion;

    return-void
.end method

.method public constructor <init>([Lccsankotlin/coroutines/CoroutineContext;)V
    .locals 1
    .param p1, "elements"    # [Lccsankotlin/coroutines/CoroutineContext;

    const-string v0, "elements"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/coroutines/CombinedContext$Serialized;->elements:[Lccsankotlin/coroutines/CoroutineContext;

    return-void
.end method

.method private final readResolve()Ljava/lang/Object;
    .locals 10

    .line 193
    iget-object v0, p0, Lccsankotlin/coroutines/CombinedContext$Serialized;->elements:[Lccsankotlin/coroutines/CoroutineContext;

    .local v0, "$this$fold$iv":[Ljava/lang/Object;
    sget-object v1, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    .local v1, "initial$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 197
    .local v2, "$i$f$fold":I
    move-object v3, v1

    .line 198
    .local v3, "accumulator$iv":Ljava/lang/Object;
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v3

    check-cast v7, Lccsankotlin/coroutines/CoroutineContext;

    .local v7, "p1":Lccsankotlin/coroutines/CoroutineContext;
    move-object v8, v6

    .local v8, "p2":Lccsankotlin/coroutines/CoroutineContext;
    const/4 v9, 0x0

    .line 193
    .local v9, "$i$a$-unknown-CombinedContext$Serialized$readResolve$1":I
    invoke-interface {v7, v8}, Lccsankotlin/coroutines/CoroutineContext;->plus(Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v3

    .end local v6    # "element$iv":Ljava/lang/Object;
    .end local v7    # "p1":Lccsankotlin/coroutines/CoroutineContext;
    .end local v8    # "p2":Lccsankotlin/coroutines/CoroutineContext;
    .end local v9    # "$i$a$-unknown-CombinedContext$Serialized$readResolve$1":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 199
    :cond_0
    nop

    .line 193
    .end local v0    # "$this$fold$iv":[Ljava/lang/Object;
    .end local v1    # "initial$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$fold":I
    .end local v3    # "accumulator$iv":Ljava/lang/Object;
    return-object v3
.end method


# virtual methods
.method public final getElements()[Lccsankotlin/coroutines/CoroutineContext;
    .locals 1

    .line 188
    iget-object v0, p0, Lccsankotlin/coroutines/CombinedContext$Serialized;->elements:[Lccsankotlin/coroutines/CoroutineContext;

    return-object v0
.end method