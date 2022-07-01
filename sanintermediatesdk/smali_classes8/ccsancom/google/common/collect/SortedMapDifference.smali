.class public interface abstract Lccsancom/google/common/collect/SortedMapDifference;
.super Ljava/lang/Object;
.source "SortedMapDifference.java"

# interfaces
.implements Lccsancom/google/common/collect/MapDifference;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/MapDifference<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract entriesDiffering()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;",
            "Lccsancom/google/common/collect/MapDifference$ValueDifference<",
            "TV;>;>;"
        }
    .end annotation
.end method

.method public abstract entriesInCommon()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract entriesOnlyOnLeft()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract entriesOnlyOnRight()Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
