.class public final Lccsankotlin/text/DelimitedRangesSequence$iterator$1;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements Ljava/util/Iterator;
.implements Lccsankotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsankotlin/text/DelimitedRangesSequence;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lccsankotlin/ranges/IntRange;",
        ">;",
        "Lccsankotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0008\u0010\u0017\u001a\u00020\u0018H\u0002J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0002J\t\u0010\u001b\u001a\u00020\u0002H\u0096\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0002X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006\"\u0004\u0008\u0013\u0010\u0008R\u001a\u0010\u0014\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006\"\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "kotlin/text/DelimitedRangesSequence$iterator$1",
        "",
        "Lccsankotlin/ranges/IntRange;",
        "counter",
        "",
        "getCounter",
        "()I",
        "setCounter",
        "(I)V",
        "currentStartIndex",
        "getCurrentStartIndex",
        "setCurrentStartIndex",
        "nextItem",
        "getNextItem",
        "()Lccsankotlin/ranges/IntRange;",
        "setNextItem",
        "(Lccsankotlin/ranges/IntRange;)V",
        "nextSearchIndex",
        "getNextSearchIndex",
        "setNextSearchIndex",
        "nextState",
        "getNextState",
        "setNextState",
        "calcNext",
        "",
        "hasNext",
        "",
        "next",
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
.field private counter:I

.field private currentStartIndex:I

.field private nextItem:Lccsankotlin/ranges/IntRange;

.field private nextSearchIndex:I

.field private nextState:I

.field final synthetic this$0:Lccsankotlin/text/DelimitedRangesSequence;


# direct methods
.method constructor <init>(Lccsankotlin/text/DelimitedRangesSequence;)V
    .locals 3
    .param p1, "this$0"    # Lccsankotlin/text/DelimitedRangesSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1178
    iput-object p1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lccsankotlin/text/DelimitedRangesSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1179
    const/4 v0, -0x1

    iput v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1180
    invoke-static {p1}, Lccsankotlin/text/DelimitedRangesSequence;->access$getStartIndex$p(Lccsankotlin/text/DelimitedRangesSequence;)I

    move-result v0

    invoke-static {p1}, Lccsankotlin/text/DelimitedRangesSequence;->access$getInput$p(Lccsankotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lccsankotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    iput v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    .line 1181
    iput v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return-void
.end method

.method private final calcNext()V
    .locals 6

    .line 1186
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1187
    iput v1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1188
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lccsankotlin/ranges/IntRange;

    iput-object v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lccsankotlin/ranges/IntRange;

    goto/16 :goto_1

    .line 1190
    :cond_0
    iget-object v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lccsankotlin/text/DelimitedRangesSequence;

    invoke-static {v0}, Lccsankotlin/text/DelimitedRangesSequence;->access$getLimit$p(Lccsankotlin/text/DelimitedRangesSequence;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    add-int/2addr v0, v3

    iput v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    iget-object v4, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lccsankotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lccsankotlin/text/DelimitedRangesSequence;->access$getLimit$p(Lccsankotlin/text/DelimitedRangesSequence;)I

    move-result v4

    if-ge v0, v4, :cond_2

    :cond_1
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    iget-object v4, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lccsankotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lccsankotlin/text/DelimitedRangesSequence;->access$getInput$p(Lccsankotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    .line 1191
    :cond_2
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    new-instance v1, Lccsankotlin/ranges/IntRange;

    iget-object v4, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lccsankotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lccsankotlin/text/DelimitedRangesSequence;->access$getInput$p(Lccsankotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lccsankotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-direct {v1, v0, v4}, Lccsankotlin/ranges/IntRange;-><init>(II)V

    iput-object v1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lccsankotlin/ranges/IntRange;

    .line 1192
    iput v2, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    goto :goto_0

    .line 1194
    :cond_3
    iget-object v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lccsankotlin/text/DelimitedRangesSequence;

    invoke-static {v0}, Lccsankotlin/text/DelimitedRangesSequence;->access$getGetNextMatch$p(Lccsankotlin/text/DelimitedRangesSequence;)Lccsankotlin/jvm/functions/Function2;

    move-result-object v0

    iget-object v4, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lccsankotlin/text/DelimitedRangesSequence;

    invoke-static {v4}, Lccsankotlin/text/DelimitedRangesSequence;->access$getInput$p(Lccsankotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iget v5, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lccsankotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsankotlin/Pair;

    .line 1195
    .local v0, "match":Lccsankotlin/Pair;
    if-nez v0, :cond_4

    .line 1196
    iget v1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    new-instance v4, Lccsankotlin/ranges/IntRange;

    iget-object v5, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->this$0:Lccsankotlin/text/DelimitedRangesSequence;

    invoke-static {v5}, Lccsankotlin/text/DelimitedRangesSequence;->access$getInput$p(Lccsankotlin/text/DelimitedRangesSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lccsankotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {v4, v1, v5}, Lccsankotlin/ranges/IntRange;-><init>(II)V

    iput-object v4, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lccsankotlin/ranges/IntRange;

    .line 1197
    iput v2, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    goto :goto_0

    .line 1199
    :cond_4
    invoke-virtual {v0}, Lccsankotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "index":I
    invoke-virtual {v0}, Lccsankotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 1200
    .local v4, "length":I
    iget v5, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    invoke-static {v5, v2}, Lccsankotlin/ranges/RangesKt;->until(II)Lccsankotlin/ranges/IntRange;

    move-result-object v5

    iput-object v5, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lccsankotlin/ranges/IntRange;

    .line 1201
    add-int v5, v2, v4

    iput v5, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    .line 1202
    if-nez v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v5, v1

    iput v5, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    .line 1203
    .end local v0    # "match":Lccsankotlin/Pair;
    .end local v2    # "index":I
    .end local v4    # "length":I
    :goto_0
    nop

    .line 1204
    nop

    .line 1205
    iput v3, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1206
    :goto_1
    nop

    .line 1207
    return-void
.end method


# virtual methods
.method public final getCounter()I
    .locals 1

    .line 1183
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    return v0
.end method

.method public final getCurrentStartIndex()I
    .locals 1

    .line 1180
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    return v0
.end method

.method public final getNextItem()Lccsankotlin/ranges/IntRange;
    .locals 1

    .line 1182
    iget-object v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lccsankotlin/ranges/IntRange;

    return-object v0
.end method

.method public final getNextSearchIndex()I
    .locals 1

    .line 1181
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return v0
.end method

.method public final getNextState()I
    .locals 1

    .line 1179
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1222
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1223
    invoke-direct {p0}, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->calcNext()V

    .line 1224
    :cond_0
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1178
    invoke-virtual {p0}, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->next()Lccsankotlin/ranges/IntRange;

    move-result-object v0

    return-object v0
.end method

.method public next()Lccsankotlin/ranges/IntRange;
    .locals 4

    .line 1210
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1211
    invoke-direct {p0}, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->calcNext()V

    .line 1212
    :cond_0
    iget v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lccsankotlin/ranges/IntRange;

    if-eqz v0, :cond_1

    .line 1216
    .local v0, "result":Lccsankotlin/ranges/IntRange;
    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Lccsankotlin/ranges/IntRange;

    iput-object v2, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lccsankotlin/ranges/IntRange;

    .line 1217
    iput v1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    .line 1218
    return-object v0

    .line 1214
    .end local v0    # "result":Lccsankotlin/ranges/IntRange;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCounter(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 1183
    iput p1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->counter:I

    return-void
.end method

.method public final setCurrentStartIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 1180
    iput p1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->currentStartIndex:I

    return-void
.end method

.method public final setNextItem(Lccsankotlin/ranges/IntRange;)V
    .locals 0
    .param p1, "<set-?>"    # Lccsankotlin/ranges/IntRange;

    .line 1182
    iput-object p1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextItem:Lccsankotlin/ranges/IntRange;

    return-void
.end method

.method public final setNextSearchIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 1181
    iput p1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextSearchIndex:I

    return-void
.end method

.method public final setNextState(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 1179
    iput p1, p0, Lccsankotlin/text/DelimitedRangesSequence$iterator$1;->nextState:I

    return-void
.end method
