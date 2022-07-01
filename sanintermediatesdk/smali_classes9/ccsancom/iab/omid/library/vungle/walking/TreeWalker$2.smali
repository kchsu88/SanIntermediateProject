.class final Lccsancom/iab/omid/library/vungle/walking/TreeWalker$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/iab/omid/library/vungle/walking/TreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->getInstance()Lccsancom/iab/omid/library/vungle/walking/TreeWalker;

    move-result-object v0

    invoke-static {v0}, Lccsancom/iab/omid/library/vungle/walking/TreeWalker;->b(Lccsancom/iab/omid/library/vungle/walking/TreeWalker;)V

    return-void
.end method
