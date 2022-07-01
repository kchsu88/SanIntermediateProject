.class Lccsancom/vungle/warren/VungleJobRunner$1;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/VungleJobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/VungleJobRunner;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/VungleJobRunner;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/VungleJobRunner;

    .line 148
    iput-object p1, p0, Lccsancom/vungle/warren/VungleJobRunner$1;->this$0:Lccsancom/vungle/warren/VungleJobRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 1
    .param p1, "type"    # I

    .line 151
    iget-object v0, p0, Lccsancom/vungle/warren/VungleJobRunner$1;->this$0:Lccsancom/vungle/warren/VungleJobRunner;

    invoke-static {v0}, Lccsancom/vungle/warren/VungleJobRunner;->access$000(Lccsancom/vungle/warren/VungleJobRunner;)V

    .line 152
    return-void
.end method
