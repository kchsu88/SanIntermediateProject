.class Lccsancom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;
.super Ljava/lang/Object;
.source "ConcurrentHashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldSettersHolder"
.end annotation


# static fields
.field static final COUNT_MAP_FIELD_SETTER:Lccsancom/google/common/collect/Serialization$FieldSetter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Serialization$FieldSetter<",
            "Lccsancom/google/common/collect/ConcurrentHashMultiset;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 77
    const-class v0, Lccsancom/google/common/collect/ConcurrentHashMultiset;

    .line 78
    const-string v1, "countMap"

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Serialization;->getFieldSetter(Ljava/lang/Class;Ljava/lang/String;)Lccsancom/google/common/collect/Serialization$FieldSetter;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/collect/ConcurrentHashMultiset$FieldSettersHolder;->COUNT_MAP_FIELD_SETTER:Lccsancom/google/common/collect/Serialization$FieldSetter;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
