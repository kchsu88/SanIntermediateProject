.class Lccsancom/vungle/warren/ui/view/VungleNativeView$2;
.super Ljava/lang/Object;
.source "VungleNativeView.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/CloseDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/VungleNativeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 304
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 307
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$2;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    .line 308
    return-void
.end method
