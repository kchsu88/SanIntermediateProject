.class public final Lccsankotlin/coroutines/CombinedContext;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lccsankotlin/coroutines/CoroutineContext;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsankotlin/coroutines/CombinedContext$Serialized;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineContextImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineContextImpl.kt\nkotlin/coroutines/CombinedContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,196:1\n1#2:197\n*E\n"
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0001\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0001!B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0000H\u0002J\u0013\u0010\u000c\u001a\u00020\t2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J5\u0010\u000f\u001a\u0002H\u0010\"\u0004\u0008\u0000\u0010\u00102\u0006\u0010\u0011\u001a\u0002H\u00102\u0018\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u0002H\u00100\u0013H\u0016\u00a2\u0006\u0002\u0010\u0014J(\u0010\u0015\u001a\u0004\u0018\u0001H\u0016\"\u0008\u0008\u0000\u0010\u0016*\u00020\u00062\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u0018H\u0096\u0002\u00a2\u0006\u0002\u0010\u0019J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u00012\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0018H\u0016J\u0008\u0010\u001d\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016J\u0008\u0010 \u001a\u00020\u000eH\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lccsankotlin/coroutines/CombinedContext;",
        "Lccsankotlin/coroutines/CoroutineContext;",
        "Ljava/io/Serializable;",
        "Lccsankotlin/io/Serializable;",
        "left",
        "element",
        "Lccsankotlin/coroutines/CoroutineContext$Element;",
        "(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)V",
        "contains",
        "",
        "containsAll",
        "context",
        "equals",
        "other",
        "",
        "fold",
        "R",
        "initial",
        "operation",
        "Lccsankotlin/Function2;",
        "(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "get",
        "E",
        "key",
        "Lccsankotlin/coroutines/CoroutineContext$Key;",
        "(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;",
        "hashCode",
        "",
        "minusKey",
        "size",
        "toString",
        "",
        "writeReplace",
        "Serialized",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private final element:Lccsankotlin/coroutines/CoroutineContext$Element;

.field private final left:Lccsankotlin/coroutines/CoroutineContext;


# direct methods
.method public constructor <init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)V
    .locals 1
    .param p1, "left"    # Lccsankotlin/coroutines/CoroutineContext;
    .param p2, "element"    # Lccsankotlin/coroutines/CoroutineContext$Element;

    const-string v0, "left"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lccsankotlin/coroutines/CombinedContext;->element:Lccsankotlin/coroutines/CoroutineContext$Element;

    return-void
.end method

.method private final contains(Lccsankotlin/coroutines/CoroutineContext$Element;)Z
    .locals 1
    .param p1, "element"    # Lccsankotlin/coroutines/CoroutineContext$Element;

    .line 153
    invoke-interface {p1}, Lccsankotlin/coroutines/CoroutineContext$Element;->getKey()Lccsankotlin/coroutines/CoroutineContext$Key;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsankotlin/coroutines/CombinedContext;->get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    invoke-static {v0, p1}, Lccsankotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final containsAll(Lccsankotlin/coroutines/CombinedContext;)Z
    .locals 4
    .param p1, "context"    # Lccsankotlin/coroutines/CombinedContext;

    .line 156
    move-object v0, p1

    .line 157
    .local v0, "cur":Lccsankotlin/coroutines/CombinedContext;
    :goto_0
    nop

    .line 158
    iget-object v1, v0, Lccsankotlin/coroutines/CombinedContext;->element:Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-direct {p0, v1}, Lccsankotlin/coroutines/CombinedContext;->contains(Lccsankotlin/coroutines/CoroutineContext$Element;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 159
    :cond_0
    iget-object v1, v0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    .line 160
    .local v1, "next":Lccsankotlin/coroutines/CoroutineContext;
    instance-of v2, v1, Lccsankotlin/coroutines/CombinedContext;

    if-eqz v2, :cond_1

    .line 161
    move-object v0, v1

    check-cast v0, Lccsankotlin/coroutines/CombinedContext;

    .line 157
    .end local v1    # "next":Lccsankotlin/coroutines/CoroutineContext;
    goto :goto_0

    .line 163
    .restart local v1    # "next":Lccsankotlin/coroutines/CoroutineContext;
    :cond_1
    if-eqz v1, :cond_2

    move-object v2, v1

    check-cast v2, Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-direct {p0, v2}, Lccsankotlin/coroutines/CombinedContext;->contains(Lccsankotlin/coroutines/CoroutineContext$Element;)Z

    move-result v2

    return v2

    :cond_2
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method private final size()I
    .locals 4

    .line 144
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CombinedContext;

    .line 145
    .local v0, "cur":Lccsankotlin/coroutines/CombinedContext;
    const/4 v1, 0x2

    .line 146
    .local v1, "size":I
    :goto_0
    nop

    .line 147
    iget-object v2, v0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    instance-of v3, v2, Lccsankotlin/coroutines/CombinedContext;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Lccsankotlin/coroutines/CombinedContext;

    if-eqz v2, :cond_1

    move-object v0, v2

    .line 148
    add-int/lit8 v1, v1, 0x1

    .line 146
    goto :goto_0

    .line 147
    :cond_1
    return v1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 6

    .line 179
    invoke-direct {p0}, Lccsankotlin/coroutines/CombinedContext;->size()I

    move-result v0

    .line 180
    .local v0, "n":I
    new-array v1, v0, [Lccsankotlin/coroutines/CoroutineContext;

    .line 181
    .local v1, "elements":[Lccsankotlin/coroutines/CoroutineContext;
    new-instance v2, Lccsankotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lccsankotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v2, Lccsankotlin/jvm/internal/Ref$IntRef;->element:I

    .line 182
    .local v2, "index":Lccsankotlin/jvm/internal/Ref$IntRef;
    sget-object v4, Lccsankotlin/Unit;->INSTANCE:Lccsankotlin/Unit;

    new-instance v5, Lccsankotlin/coroutines/CombinedContext$writeReplace$1;

    invoke-direct {v5, v1, v2}, Lccsankotlin/coroutines/CombinedContext$writeReplace$1;-><init>([Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/jvm/internal/Ref$IntRef;)V

    check-cast v5, Lccsankotlin/jvm/functions/Function2;

    invoke-virtual {p0, v4, v5}, Lccsankotlin/coroutines/CombinedContext;->fold(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 183
    iget v4, v2, Lccsankotlin/jvm/internal/Ref$IntRef;->element:I

    if-ne v4, v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    .line 184
    nop

    .line 185
    new-instance v3, Lccsankotlin/coroutines/CombinedContext$Serialized;

    invoke-direct {v3, v1}, Lccsankotlin/coroutines/CombinedContext$Serialized;-><init>([Lccsankotlin/coroutines/CoroutineContext;)V

    return-object v3

    .line 183
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Check failed."

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 169
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CombinedContext;

    if-eq v0, p1, :cond_1

    instance-of v0, p1, Lccsankotlin/coroutines/CombinedContext;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/CombinedContext;

    invoke-direct {v0}, Lccsankotlin/coroutines/CombinedContext;->size()I

    move-result v0

    invoke-direct {p0}, Lccsankotlin/coroutines/CombinedContext;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move-object v0, p1

    check-cast v0, Lccsankotlin/coroutines/CombinedContext;

    invoke-direct {v0, p0}, Lccsankotlin/coroutines/CombinedContext;->containsAll(Lccsankotlin/coroutines/CombinedContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public fold(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 2
    .param p1, "initial"    # Ljava/lang/Object;
    .param p2, "operation"    # Lccsankotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lccsankotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    invoke-interface {v0, p1, p2}, Lccsankotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lccsankotlin/coroutines/CombinedContext;->element:Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-interface {p2, v0, v1}, Lccsankotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;
    .locals 3
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lccsankotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    move-object v0, p0

    check-cast v0, Lccsankotlin/coroutines/CombinedContext;

    .line 119
    .local v0, "cur":Lccsankotlin/coroutines/CombinedContext;
    :goto_0
    nop

    .line 120
    iget-object v1, v0, Lccsankotlin/coroutines/CombinedContext;->element:Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-interface {v1, p1}, Lccsankotlin/coroutines/CoroutineContext$Element;->get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    .local v1, "it":Lccsankotlin/coroutines/CoroutineContext$Element;
    const/4 v2, 0x0

    .line 120
    .local v2, "$i$a$-let-CombinedContext$get$1":I
    return-object v1

    .line 121
    .end local v1    # "it":Lccsankotlin/coroutines/CoroutineContext$Element;
    .end local v2    # "$i$a$-let-CombinedContext$get$1":I
    :cond_0
    iget-object v1, v0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    .line 122
    .local v1, "next":Lccsankotlin/coroutines/CoroutineContext;
    instance-of v2, v1, Lccsankotlin/coroutines/CombinedContext;

    if-eqz v2, :cond_1

    .line 123
    move-object v0, v1

    check-cast v0, Lccsankotlin/coroutines/CombinedContext;

    .line 119
    .end local v1    # "next":Lccsankotlin/coroutines/CoroutineContext;
    goto :goto_0

    .line 125
    .restart local v1    # "next":Lccsankotlin/coroutines/CoroutineContext;
    :cond_1
    invoke-interface {v1, p1}, Lccsankotlin/coroutines/CoroutineContext;->get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v2

    return-object v2
.end method

.method public hashCode()I
    .locals 2

    .line 171
    iget-object v0, p0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lccsankotlin/coroutines/CombinedContext;->element:Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public minusKey(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 3
    .param p1, "key"    # Lccsankotlin/coroutines/CoroutineContext$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsankotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lccsankotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lccsankotlin/coroutines/CombinedContext;->element:Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-interface {v0, p1}, Lccsankotlin/coroutines/CoroutineContext$Element;->get(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    .local v0, "it":Lccsankotlin/coroutines/CoroutineContext$Element;
    const/4 v1, 0x0

    .line 134
    .local v1, "$i$a$-let-CombinedContext$minusKey$1":I
    iget-object v2, p0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    return-object v2

    .line 135
    .end local v0    # "it":Lccsankotlin/coroutines/CoroutineContext$Element;
    .end local v1    # "$i$a$-let-CombinedContext$minusKey$1":I
    :cond_0
    iget-object v0, p0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    invoke-interface {v0, p1}, Lccsankotlin/coroutines/CoroutineContext;->minusKey(Lccsankotlin/coroutines/CoroutineContext$Key;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 136
    .local v0, "newLeft":Lccsankotlin/coroutines/CoroutineContext;
    nop

    .line 137
    iget-object v1, p0, Lccsankotlin/coroutines/CombinedContext;->left:Lccsankotlin/coroutines/CoroutineContext;

    if-ne v0, v1, :cond_1

    move-object v1, p0

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext;

    goto :goto_0

    .line 138
    :cond_1
    sget-object v1, Lccsankotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lccsankotlin/coroutines/EmptyCoroutineContext;

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lccsankotlin/coroutines/CombinedContext;->element:Lccsankotlin/coroutines/CoroutineContext$Element;

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext;

    goto :goto_0

    .line 139
    :cond_2
    new-instance v1, Lccsankotlin/coroutines/CombinedContext;

    iget-object v2, p0, Lccsankotlin/coroutines/CombinedContext;->element:Lccsankotlin/coroutines/CoroutineContext$Element;

    invoke-direct {v1, v0, v2}, Lccsankotlin/coroutines/CombinedContext;-><init>(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext$Element;)V

    check-cast v1, Lccsankotlin/coroutines/CoroutineContext;

    .line 136
    :goto_0
    return-object v1
.end method

.method public plus(Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;
    .locals 1
    .param p1, "context"    # Lccsankotlin/coroutines/CoroutineContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lccsankotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p0, p1}, Lccsankotlin/coroutines/CoroutineContext$DefaultImpls;->plus(Lccsankotlin/coroutines/CoroutineContext;Lccsankotlin/coroutines/CoroutineContext;)Lccsankotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsankotlin/coroutines/CombinedContext$toString$1;->INSTANCE:Lccsankotlin/coroutines/CombinedContext$toString$1;

    check-cast v1, Lccsankotlin/jvm/functions/Function2;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Lccsankotlin/coroutines/CombinedContext;->fold(Ljava/lang/Object;Lccsankotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    return-object v0
.end method
