.class Lccsancom/vungle/warren/AdActivity$1;
.super Ljava/lang/Object;
.source "AdActivity.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/CloseDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/AdActivity;->onCreate(Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/AdActivity;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/AdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/AdActivity;

    .line 157
    iput-object p1, p0, Lccsancom/vungle/warren/AdActivity$1;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 160
    iget-object v0, p0, Lccsancom/vungle/warren/AdActivity$1;->this$0:Lccsancom/vungle/warren/AdActivity;

    invoke-virtual {v0}, Lccsancom/vungle/warren/AdActivity;->finish()V

    .line 161
    return-void
.end method
