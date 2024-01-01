/* Copyright (c) 2023 Awadhy Mohammed
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */

#include "fff.h"

#include "gtest/gtest.h"

#include <limits.h>

DEFINE_FFF_GLOBALS

class TestHello : public ::testing::Test {
public:
    TestHello()
    {
    }
};


TEST_F(TestHello, dummy_test) {
    EXPECT_EQ(7 * 6, 42);
    EXPECT_STRNE("hello", "world");
}
