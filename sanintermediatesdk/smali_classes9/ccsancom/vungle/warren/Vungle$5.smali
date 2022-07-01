.class Lccsancom/vungle/warren/Vungle$5;
.super Ljava/lang/Object;
.source "Vungle.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/Vungle;->configure(Lccsancom/vungle/warren/InitCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsancom/vungle/warren/model/Placement;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/Vungle;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/Vungle;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/Vungle;

    .line 654
    iput-object p1, p0, Lccsancom/vungle/warren/Vungle$5;->this$0:Lccsancom/vungle/warren/Vungle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Placement;)I
    .locals 2
    .param p1, "o1"    # Lccsancom/vungle/warren/model/Placement;
    .param p2, "o2"    # Lccsancom/vungle/warren/model/Placement;

    .line 657
    invoke-virtual {p1}, Lccsancom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lccsancom/vungle/warren/model/Placement;->getAutoCachePriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 654
    check-cast p1, Lccsancom/vungle/warren/model/Placement;

    check-cast p2, Lccsancom/vungle/warren/model/Placement;

    invoke-virtual {p0, p1, p2}, Lccsancom/vungle/warren/Vungle$5;->compare(Lccsancom/vungle/warren/model/Placement;Lccsancom/vungle/warren/model/Placement;)I

    move-result p1

    return p1
.end method
