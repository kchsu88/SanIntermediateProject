.class Lccsanandroidx/appcompat/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mListener:Lccsanandroidx/appcompat/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "listener"    # Lccsanandroidx/appcompat/app/ActionBar$OnNavigationListener;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lccsanandroidx/appcompat/app/NavItemSelectedListener;->mListener:Lccsanandroidx/appcompat/app/ActionBar$OnNavigationListener;

    .line 32
    return-void
.end method


# virtual methods
.method public onItemSelected(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 1
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;",
            "Lccsanandroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 36
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsanandroidx/appcompat/app/NavItemSelectedListener;->mListener:Lccsanandroidx/appcompat/app/ActionBar$OnNavigationListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p3, p4, p5}, Lccsanandroidx/appcompat/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 39
    :cond_0
    return-void
.end method

.method public onNothingSelected(Lccsanandroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 44
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    return-void
.end method
