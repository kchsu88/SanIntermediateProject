.class public interface abstract Lccsancom/google/common/graph/MutableNetwork;
.super Ljava/lang/Object;
.source "MutableNetwork.java"

# interfaces
.implements Lccsancom/google/common/graph/Network;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/graph/Network<",
        "TN;TE;>;"
    }
.end annotation


# virtual methods
.method public abstract addEdge(Lccsancom/google/common/graph/EndpointPair;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;TE;)Z"
        }
    .end annotation
.end method

.method public abstract addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation
.end method

.method public abstract addNode(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation
.end method

.method public abstract removeEdge(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
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
