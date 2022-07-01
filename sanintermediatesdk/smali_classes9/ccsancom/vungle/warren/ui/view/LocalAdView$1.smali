.class Lccsancom/vungle/warren/ui/view/LocalAdView$1;
.super Ljava/lang/Object;
.source "LocalAdView.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/view/LocalAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/LocalAdView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 124
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(I)V
    .locals 2
    .param p1, "code"    # I

    .line 127
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$100(Lccsancom/vungle/warren/ui/view/LocalAdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$000(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onDownload()V

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$000(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onPrivacy()V

    .line 131
    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$200(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsanandroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$300(Lccsancom/vungle/warren/ui/view/LocalAdView;)V

    .line 150
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$000(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v0

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$400(Lccsancom/vungle/warren/ui/view/LocalAdView;)Z

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onMute(Z)V

    .line 151
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    iget-object v0, v0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v1}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$400(Lccsancom/vungle/warren/ui/view/LocalAdView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setMuted(Z)V

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$000(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onDownload()V

    .line 139
    goto :goto_0

    .line 134
    :pswitch_4
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;->this$0:Lccsancom/vungle/warren/ui/view/LocalAdView;

    invoke-static {v0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->access$000(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->handleExit()Z

    .line 135
    nop

    .line 155
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
