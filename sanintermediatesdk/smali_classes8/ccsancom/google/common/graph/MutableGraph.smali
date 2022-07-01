.class public interface abstract Lccsancom/google/common/graph/MutableGraph;
.super Ljava/lang/Object;
.source "MutableGraph.java"

# interfaces
.implements Lccsancom/google/common/graph/Graph;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/graph/Graph<",
        "TN;>;"
    }
.end annotation


# virtual methods
.method public abstract addNode(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation
.end method

.method public abstract putEdge(Lccsancom/google/common/graph/EndpointPair;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation
.end method

.method public abstract putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation
.end method

.method public abstract removeEdge(Lccsancom/google/common/graph/EndpointPair;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation
.end method

.method public abstract removeEdge(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation
.end method

.method public abstract removeNode(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation
.end method
