.class final enum Lccsancom/google/common/graph/Graphs$NodeVisitState;
.super Ljava/lang/Enum;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NodeVisitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/google/common/graph/Graphs$NodeVisitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/google/common/graph/Graphs$NodeVisitState;

.field public static final enum COMPLETE:Lccsancom/google/common/graph/Graphs$NodeVisitState;

.field public static final enum PENDING:Lccsancom/google/common/graph/Graphs$NodeVisitState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 608
    new-instance v0, Lccsancom/google/common/graph/Graphs$NodeVisitState;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/graph/Graphs$NodeVisitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lccsancom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lccsancom/google/common/graph/Graphs$NodeVisitState;

    .line 609
    new-instance v1, Lccsancom/google/common/graph/Graphs$NodeVisitState;

    const-string v3, "COMPLETE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lccsancom/google/common/graph/Graphs$NodeVisitState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lccsancom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lccsancom/google/common/graph/Graphs$NodeVisitState;

    .line 607
    const/4 v3, 0x2

    new-array v3, v3, [Lccsancom/google/common/graph/Graphs$NodeVisitState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lccsancom/google/common/graph/Graphs$NodeVisitState;->$VALUES:[Lccsancom/google/common/graph/Graphs$NodeVisitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/google/common/graph/Graphs$NodeVisitState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 607
    const-class v0, Lccsancom/google/common/graph/Graphs$NodeVisitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/graph/Graphs$NodeVisitState;

    return-object v0
.end method

.method public static values()[Lccsancom/google/common/graph/Graphs$NodeVisitState;
    .locals 1

    .line 607
    sget-object v0, Lccsancom/google/common/graph/Graphs$NodeVisitState;->$VALUES:[Lccsancom/google/common/graph/Graphs$NodeVisitState;

    invoke-virtual {v0}, [Lccsancom/google/common/graph/Graphs$NodeVisitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/google/common/graph/Graphs$NodeVisitState;

    return-object v0
.end method
