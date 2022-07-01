.class public Lccsansan/dt/deleteDownItem$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dt/deleteDownItem$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dt/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "removeDownloadListener"
.end annotation


# instance fields
.field public removeDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/deleteDownItem$removeDownloadListener;->removeDownloadListener:Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lccsansan/dt/deleteDownItem$removeDownloadListener;->removeDownloadListener:Ljava/util/List;

    new-instance v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;-><init>(Lccsanorg/json/JSONObject;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
