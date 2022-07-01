.class Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;
.super Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;
.source "ExtendedFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideStrategy"
.end annotation


# instance fields
.field private isCancelled:Z

.field final synthetic this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
    .param p2, "animatorTracker"    # Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;

    .line 1255
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 1256
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;-><init>(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lccsancom/google/android/material/floatingactionbutton/AnimatorTracker;)V

    .line 1257
    return-void
.end method


# virtual methods
.method public getDefaultMotionSpecResource()I
    .locals 1

    .line 1278
    sget v0, Lccsancom/google/android/material/R$animator;->mtrl_extended_fab_hide_motion_spec:I

    return v0
.end method

.method public onAnimationCancel()V
    .locals 1

    .line 1291
    invoke-super {p0}, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationCancel()V

    .line 1292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->isCancelled:Z

    .line 1293
    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .line 1297
    invoke-super {p0}, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationEnd()V

    .line 1298
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$902(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 1299
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->isCancelled:Z

    if-nez v0, :cond_0

    .line 1300
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setVisibility(I)V

    .line 1302
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 1283
    invoke-super {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/BaseMotionStrategy;->onAnimationStart(Lccsanandroid/animation/Animator;)V

    .line 1284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->isCancelled:Z

    .line 1285
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {v1, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$902(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I

    .line 1287
    return-void
.end method

.method public onChange(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;)V
    .locals 1
    .param p1, "callback"    # Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;

    .line 1266
    if-eqz p1, :cond_0

    .line 1267
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$OnChangedCallback;->onHidden(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    .line 1269
    :cond_0
    return-void
.end method

.method public performNow()V
    .locals 2

    .line 1261
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setVisibility(I)V

    .line 1262
    return-void
.end method

.method public shouldCancel()Z
    .locals 1

    .line 1273
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$HideStrategy;->this$0:Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {v0}, Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$1100(Lccsancom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z

    move-result v0

    return v0
.end method
