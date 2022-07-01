.class final Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;
.super Lccsanandroid/view/OrientationEventListener;
.source "MBBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/activity/MBBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/activity/MBBaseActivity;Lccsanandroid/content/Context;I)V
    .locals 0

    .line 133
    iput-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-direct {p0, p2, p3}, Lccsanandroid/view/OrientationEventListener;-><init>(Lccsanandroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 3

    .line 136
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    const/4 v0, 0x1

    const-string v1, "MBBaseActivity"

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 137
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;I)I

    .line 138
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    .line 139
    const-string p1, "Orientation Left"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 143
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 144
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;I)I

    .line 145
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    .line 146
    const-string p1, "Orientation Right"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void

    .line 150
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    if-eq p1, v2, :cond_2

    .line 151
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;I)I

    .line 152
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    .line 153
    const-string p1, "Orientation Top"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void

    .line 157
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->b(Lccsancom/mbridge/msdk/activity/MBBaseActivity;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    .line 158
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->a(Lccsancom/mbridge/msdk/activity/MBBaseActivity;I)I

    .line 159
    iget-object p1, p0, Lccsancom/mbridge/msdk/activity/MBBaseActivity$2;->a:Lccsancom/mbridge/msdk/activity/MBBaseActivity;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/activity/MBBaseActivity;->getNotchParams()V

    .line 160
    const-string p1, "Orientation Bottom"

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_3
    return-void
.end method
