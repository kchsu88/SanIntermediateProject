.class abstract Lccsancom/vungle/warren/ServiceLocator$Creator;
.super Ljava/lang/Object;
.source "ServiceLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ServiceLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Creator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ServiceLocator;


# direct methods
.method private constructor <init>(Lccsancom/vungle/warren/ServiceLocator;)V
    .locals 0

    .line 338
    .local p0, "this":Lccsancom/vungle/warren/ServiceLocator$Creator;, "Lccsancom/vungle/warren/ServiceLocator$Creator<TT;>;"
    iput-object p1, p0, Lccsancom/vungle/warren/ServiceLocator$Creator;->this$0:Lccsancom/vungle/warren/ServiceLocator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/vungle/warren/ServiceLocator;Lccsancom/vungle/warren/ServiceLocator$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/vungle/warren/ServiceLocator;
    .param p2, "x1"    # Lccsancom/vungle/warren/ServiceLocator$1;

    .line 338
    .local p0, "this":Lccsancom/vungle/warren/ServiceLocator$Creator;, "Lccsancom/vungle/warren/ServiceLocator$Creator<TT;>;"
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ServiceLocator$Creator;-><init>(Lccsancom/vungle/warren/ServiceLocator;)V

    return-void
.end method


# virtual methods
.method abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method isSingleton()Z
    .locals 1

    .line 342
    .local p0, "this":Lccsancom/vungle/warren/ServiceLocator$Creator;, "Lccsancom/vungle/warren/ServiceLocator$Creator<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
