.class Lccsanandroidx/appcompat/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/appcompat/app/ToolbarActionBar;

    .line 54
    iput-object p1, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$1;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object v0, p0, Lccsanandroidx/appcompat/app/ToolbarActionBar$1;->this$0:Lccsanandroidx/appcompat/app/ToolbarActionBar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/app/ToolbarActionBar;->populateOptionsMenu()V

    .line 58
    return-void
.end method
