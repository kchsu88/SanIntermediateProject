.class abstract Lccsancom/google/common/collect/EnumMultiset$Itr;
.super Ljava/lang/Object;
.source "EnumMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/EnumMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lccsancom/google/common/collect/EnumMultiset;

.field toRemove:I


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/EnumMultiset;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/EnumMultiset;

    .line 208
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$Itr;, "Lccsancom/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->index:I

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 216
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$Itr;, "Lccsancom/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    :goto_0
    iget v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->index:I

    iget-object v1, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-static {v1}, Lccsancom/google/common/collect/EnumMultiset;->access$000(Lccsancom/google/common/collect/EnumMultiset;)[Ljava/lang/Enum;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 217
    iget-object v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lccsancom/google/common/collect/EnumMultiset;->access$100(Lccsancom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v1, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->index:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    .line 218
    const/4 v0, 0x1

    return v0

    .line 216
    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->index:I

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 226
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$Itr;, "Lccsancom/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/EnumMultiset$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->index:I

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/EnumMultiset$Itr;->output(I)Ljava/lang/Object;

    move-result-object v0

    .line 230
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->index:I

    iput v1, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    .line 231
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->index:I

    .line 232
    return-object v0

    .line 227
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method abstract output(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 6

    .line 237
    .local p0, "this":Lccsancom/google/common/collect/EnumMultiset$Itr;, "Lccsancom/google/common/collect/EnumMultiset<TE;>.Itr<TT;>;"
    iget v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 238
    iget-object v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lccsancom/google/common/collect/EnumMultiset;->access$100(Lccsancom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v0, v0, v2

    if-lez v0, :cond_1

    .line 239
    iget-object v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lccsancom/google/common/collect/EnumMultiset;->access$210(Lccsancom/google/common/collect/EnumMultiset;)I

    .line 240
    iget-object v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lccsancom/google/common/collect/EnumMultiset;->access$300(Lccsancom/google/common/collect/EnumMultiset;)J

    move-result-wide v2

    iget-object v4, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-static {v4}, Lccsancom/google/common/collect/EnumMultiset;->access$100(Lccsancom/google/common/collect/EnumMultiset;)[I

    move-result-object v4

    iget v5, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aget v4, v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lccsancom/google/common/collect/EnumMultiset;->access$302(Lccsancom/google/common/collect/EnumMultiset;J)J

    .line 241
    iget-object v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->this$0:Lccsancom/google/common/collect/EnumMultiset;

    invoke-static {v0}, Lccsancom/google/common/collect/EnumMultiset;->access$100(Lccsancom/google/common/collect/EnumMultiset;)[I

    move-result-object v0

    iget v2, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    aput v1, v0, v2

    .line 243
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/EnumMultiset$Itr;->toRemove:I

    .line 244
    return-void
.end method
