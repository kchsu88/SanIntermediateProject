.class public final Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericModelRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/bumptech/glide/RequestManager;


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/RequestManager;Lccsancom/bumptech/glide/load/model/ModelLoader;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 713
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;, "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
    .local p2, "modelLoader":Lccsancom/bumptech/glide/load/model/ModelLoader;, "Lccsancom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iput-object p1, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->this$0:Lccsancom/bumptech/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    .line 715
    iput-object p3, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->dataClass:Ljava/lang/Class;

    .line 716
    return-void
.end method

.method static synthetic access$600(Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;)Lccsancom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    .line 709
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->modelLoader:Lccsancom/bumptech/glide/load/model/ModelLoader;

    return-object v0
.end method

.method static synthetic access$700(Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;

    .line 709
    iget-object v0, p0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;->dataClass:Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<",
            "TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    .line 725
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;, "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    invoke-direct {v0, p0, p1}, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<",
            "TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    .line 735
    .local p0, "this":Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;, "Lccsancom/bumptech/glide/RequestManager$GenericModelRequest<TA;TT;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    new-instance v0, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    invoke-direct {v0, p0, p1}, Lccsancom/bumptech/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lccsancom/bumptech/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V

    return-object v0
.end method
