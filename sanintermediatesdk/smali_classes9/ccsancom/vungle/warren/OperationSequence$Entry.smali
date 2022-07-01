.class Lccsancom/vungle/warren/OperationSequence$Entry;
.super Ljava/lang/Object;
.source "OperationSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/OperationSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# static fields
.field private static final seq:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field operation:Lccsancom/vungle/warren/AdLoader$Operation;

.field private final order:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/OperationSequence$Entry;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/AdLoader$Operation;)V
    .locals 1
    .param p1, "operation"    # Lccsancom/vungle/warren/AdLoader$Operation;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lccsancom/vungle/warren/OperationSequence$Entry;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lccsancom/vungle/warren/OperationSequence$Entry;->order:I

    .line 26
    iput-object p1, p0, Lccsancom/vungle/warren/OperationSequence$Entry;->operation:Lccsancom/vungle/warren/AdLoader$Operation;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/OperationSequence$Entry;)I
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/OperationSequence$Entry;

    .line 18
    iget v0, p0, Lccsancom/vungle/warren/OperationSequence$Entry;->order:I

    return v0
.end method
