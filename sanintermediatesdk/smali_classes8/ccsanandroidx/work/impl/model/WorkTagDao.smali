.class public interface abstract Lccsanandroidx/work/impl/model/WorkTagDao;
.super Ljava/lang/Object;
.source "WorkTagDao.java"


# virtual methods
.method public abstract getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkSpecIdsWithTag(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lccsanandroidx/work/impl/model/WorkTag;)V
.end method
