.class Lccsancom/vungle/warren/OperationSequence$1;
.super Ljava/lang/Object;
.source "OperationSequence.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/OperationSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsancom/vungle/warren/OperationSequence$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/OperationSequence;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/OperationSequence;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/OperationSequence;

    .line 30
    iput-object p1, p0, Lccsancom/vungle/warren/OperationSequence$1;->this$0:Lccsancom/vungle/warren/OperationSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lccsancom/vungle/warren/OperationSequence$Entry;Lccsancom/vungle/warren/OperationSequence$Entry;)I
    .locals 3
    .param p1, "e1"    # Lccsancom/vungle/warren/OperationSequence$Entry;
    .param p2, "e2"    # Lccsancom/vungle/warren/OperationSequence$Entry;

    .line 34
    iget-object v0, p1, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    iget v0, v0, Lccsancom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p2, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    iget v1, v1, Lccsancom/vungle/warren/AdLoader$Operation;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 35
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 36
    invoke-static {p1}, Lccsancom/vungle/warren/OperationSequence$Entry;->access$000(Lccsancom/vungle/warren/OperationSequence$Entry;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Lccsancom/vungle/warren/OperationSequence$Entry;->access$000(Lccsancom/vungle/warren/OperationSequence$Entry;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    return v1

    .line 38
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lccsancom/vungle/warren/OperationSequence$Entry;

    check-cast p2, Lccsancom/vungle/warren/OperationSequence$Entry;

    invoke-virtual {p0, p1, p2}, Lccsancom/vungle/warren/OperationSequence$1;->compare(Lccsancom/vungle/warren/OperationSequence$Entry;Lccsancom/vungle/warren/OperationSequence$Entry;)I

    move-result p1

    return p1
.end method
