.class public final Lccsanandroidx/work/OverwritingInputMerger;
.super Lccsanandroidx/work/InputMerger;
.source "OverwritingInputMerger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lccsanandroidx/work/InputMerger;-><init>()V

    return-void
.end method


# virtual methods
.method public merge(Ljava/util/List;)Lccsanandroidx/work/Data;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/Data;",
            ">;)",
            "Lccsanandroidx/work/Data;"
        }
    .end annotation

    .line 36
    .local p1, "inputs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/Data;>;"
    new-instance v0, Lccsanandroidx/work/Data$Builder;

    invoke-direct {v0}, Lccsanandroidx/work/Data$Builder;-><init>()V

    .line 37
    .local v0, "output":Lccsanandroidx/work/Data$Builder;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 39
    .local v1, "mergedValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/work/Data;

    .line 40
    .local v3, "input":Lccsanandroidx/work/Data;
    invoke-virtual {v3}, Lccsanandroidx/work/Data;->getKeyValueMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    .end local v3    # "input":Lccsanandroidx/work/Data;
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Data$Builder;->putAll(Ljava/util/Map;)Lccsanandroidx/work/Data$Builder;

    .line 44
    invoke-virtual {v0}, Lccsanandroidx/work/Data$Builder;->build()Lccsanandroidx/work/Data;

    move-result-object v2

    return-object v2
.end method
