require 'rails_helper'

describe AssignProgramService do
  let!(:user) { create(:user) }
  let!(:group) { user.group }
  let!(:video) { create(:video) }
  let!(:program) { video.program }

  describe '.perform' do
    context 'assign user to program' do
      subject { described_class.new(program, user) }

      it 'assignes program to user' do
        expect { subject.perform }.to change { program.users.count }.by(1)
      end
    end

    context 'assign user to program' do
      subject { described_class.new(program, group) }

      it 'assignes program to user' do
        expect { subject.perform }.to change { program.groups.count }.by(1)
      end
    end
  end
end
