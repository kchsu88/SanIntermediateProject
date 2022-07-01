.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;
.super Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar;->createFabDefaultXAnimation(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

.field final synthetic val$targetMode:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomappbar/BottomAppBar;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    .line 635
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    iput p2, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;->val$targetMode:I

    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHidden(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 2
    .param p1, "fab"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 638
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    iget v1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;->val$targetMode:I

    invoke-static {v0, v1}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1800(Lccsancom/google/android/material/bottomappbar/BottomAppBar;I)F

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationX(F)V

    .line 639
    new-instance v0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5$1;-><init>(Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;)V

    invoke-virtual {p1, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->show(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;)V

    .line 646
    return-void
.end method
