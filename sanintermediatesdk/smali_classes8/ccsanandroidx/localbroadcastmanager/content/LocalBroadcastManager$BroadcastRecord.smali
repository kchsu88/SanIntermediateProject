.class final Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BroadcastRecord"
.end annotation


# instance fields
.field final intent:Lccsanandroid/content/Intent;

.field final receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanandroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "_intent"    # Lccsanandroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p2, "_receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->intent:Lccsanandroid/content/Intent;

    .line 81
    iput-object p2, p0, Lccsanandroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    .line 82
    return-void
.end method
