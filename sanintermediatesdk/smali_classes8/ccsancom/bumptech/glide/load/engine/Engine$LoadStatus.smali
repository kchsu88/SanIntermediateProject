.class public Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadStatus"
.end annotation


# instance fields
.field private final cb:Lccsancom/bumptech/glide/request/ResourceCallback;

.field private final engineJob:Lccsancom/bumptech/glide/load/engine/EngineJob;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/request/ResourceCallback;Lccsancom/bumptech/glide/load/engine/EngineJob;)V
    .locals 0
    .param p1, "cb"    # Lccsancom/bumptech/glide/request/ResourceCallback;
    .param p2, "engineJob"    # Lccsancom/bumptech/glide/load/engine/EngineJob;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lccsancom/bumptech/glide/request/ResourceCallback;

    .line 53
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lccsancom/bumptech/glide/load/engine/EngineJob;

    .line 54
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 57
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;->engineJob:Lccsancom/bumptech/glide/load/engine/EngineJob;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;->cb:Lccsancom/bumptech/glide/request/ResourceCallback;

    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/load/engine/EngineJob;->removeCallback(Lccsancom/bumptech/glide/request/ResourceCallback;)V

    .line 58
    return-void
.end method
