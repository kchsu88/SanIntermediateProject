.class public Lccsancom/bumptech/glide/load/MultiTransformation;
.super Ljava/lang/Object;
.source "MultiTransformation.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/Transformation<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private final transformations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Lccsancom/bumptech/glide/load/MultiTransformation;, "Lccsancom/bumptech/glide/load/MultiTransformation<TT;>;"
    .local p1, "transformationList":Ljava/util/Collection;, "Ljava/util/Collection<+Lccsancom/bumptech/glide/load/Transformation<TT;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 29
    iput-object p1, p0, Lccsancom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 30
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>([Lccsancom/bumptech/glide/load/Transformation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 18
    .local p0, "this":Lccsancom/bumptech/glide/load/MultiTransformation;, "Lccsancom/bumptech/glide/load/MultiTransformation<TT;>;"
    .local p1, "transformations":[Lccsancom/bumptech/glide/load/Transformation;, "[Lccsancom/bumptech/glide/load/Transformation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 22
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    .line 23
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MultiTransformation must contain at least one Transformation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 4

    .line 48
    .local p0, "this":Lccsancom/bumptech/glide/load/MultiTransformation;, "Lccsancom/bumptech/glide/load/MultiTransformation<TT;>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/bumptech/glide/load/Transformation;

    .line 51
    .local v2, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TT;>;"
    invoke-interface {v2}, Lccsancom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .end local v2    # "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TT;>;"
    goto :goto_0

    .line 53
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    .line 55
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v0, p0, Lccsancom/bumptech/glide/load/MultiTransformation;->id:Ljava/lang/String;

    return-object v0
.end method

.method public transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lccsancom/bumptech/glide/load/MultiTransformation;, "Lccsancom/bumptech/glide/load/MultiTransformation<TT;>;"
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    move-object v0, p1

    .line 36
    .local v0, "previous":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/load/MultiTransformation;->transformations:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/bumptech/glide/load/Transformation;

    .line 37
    .local v2, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TT;>;"
    invoke-interface {v2, v0, p2, p3}, Lccsancom/bumptech/glide/load/Transformation;->transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    .line 38
    .local v3, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 41
    :cond_0
    move-object v0, v3

    .line 42
    .end local v2    # "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TT;>;"
    .end local v3    # "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<TT;>;"
    goto :goto_0

    .line 43
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method
