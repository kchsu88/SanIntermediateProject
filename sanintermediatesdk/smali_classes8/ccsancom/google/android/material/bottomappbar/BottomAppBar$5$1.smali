.class Lccsancom/google/android/material/bottomappbar/BottomAppBar$5$1;
.super Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;
.source "BottomAppBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;->onHidden(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;

    .line 640
    iput-object p1, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5$1;->this$1:Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton$OnVisibilityChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onShown(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1, "fab"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 643
    iget-object v0, p0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5$1;->this$1:Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;

    iget-object v0, v0, Lccsancom/google/android/material/bottomappbar/BottomAppBar$5;->this$0:Lccsancom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {v0}, Lccsancom/google/android/material/bottomappbar/BottomAppBar;->access$1600(Lccsancom/google/android/material/bottomappbar/BottomAppBar;)V

    .line 644
    return-void
.end method
