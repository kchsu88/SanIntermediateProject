.class Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;
.super Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
.source "BaseProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;

    .line 808
    .local p0, "this":Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;, "Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;"
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-direct {p0}, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 812
    .local p0, "this":Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;, "Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;"
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;->setIndeterminate(Z)V

    .line 815
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-virtual {v0, v1, v1}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    .line 816
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-static {v0}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;->access$300(Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;)I

    move-result v1

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator$3;->this$0:Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;

    invoke-static {v2}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;->access$400(Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    .line 817
    return-void
.end method
