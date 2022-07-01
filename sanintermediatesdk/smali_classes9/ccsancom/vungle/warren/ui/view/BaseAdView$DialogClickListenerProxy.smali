.class Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;
.super Ljava/lang/Object;
.source "BaseAdView.java"

# interfaces
.implements Lccsanandroid/content/DialogInterface$OnClickListener;
.implements Lccsanandroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/view/BaseAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogClickListenerProxy"
.end annotation


# instance fields
.field private ckickRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsanandroid/content/DialogInterface$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private dismissRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsanandroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/DialogInterface$OnClickListener;Lccsanandroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "onClickListener"    # Lccsanandroid/content/DialogInterface$OnClickListener;
    .param p2, "onDismissListener"    # Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->ckickRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->dismissRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 173
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->ckickRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->dismissRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;Lccsanandroid/app/Dialog;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;
    .param p1, "x1"    # Lccsanandroid/app/Dialog;

    .line 167
    invoke-direct {p0, p1}, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->autoRelease(Lccsanandroid/app/Dialog;)V

    return-void
.end method

.method private autoRelease(Lccsanandroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Lccsanandroid/app/Dialog;

    .line 187
    invoke-virtual {p1, p0}, Lccsanandroid/app/Dialog;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 179
    invoke-interface {p1}, Lccsanandroid/content/DialogInterface;->dismiss()V

    .line 180
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->ckickRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/DialogInterface$OnClickListener;

    .line 181
    .local v0, "base":Lccsanandroid/content/DialogInterface$OnClickListener;
    if-eqz v0, :cond_0

    .line 182
    invoke-interface {v0, p1, p2}, Lccsanandroid/content/DialogInterface$OnClickListener;->onClick(Lccsanandroid/content/DialogInterface;I)V

    .line 184
    :cond_0
    return-void
.end method

.method public onDismiss(Lccsanandroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Lccsanandroid/content/DialogInterface;

    .line 192
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->dismissRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/DialogInterface$OnDismissListener;

    .line 193
    .local v0, "base":Lccsanandroid/content/DialogInterface$OnDismissListener;
    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0, p1}, Lccsanandroid/content/DialogInterface$OnDismissListener;->onDismiss(Lccsanandroid/content/DialogInterface;)V

    .line 196
    :cond_0
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->dismissRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 197
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/BaseAdView$DialogClickListenerProxy;->ckickRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 198
    return-void
.end method
